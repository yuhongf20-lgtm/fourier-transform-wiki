$ErrorActionPreference = 'Stop'
Set-Location -LiteralPath (Join-Path $PSScriptRoot '..')

function Get-SourceIds([string]$Markdown) {
    $patterns = @(
        '(?m)^[ \t]*(?:-[ \t]+)?來源 ID[：:][ \t]*(?<id>S[0-9]{2})(?=[ \t\r\n（(]|$)',
        '(?m)^## [^\r\n]*?（(?<id>S[0-9]{2})，投影片[ \t]+',
        '(?m)^-[ \t]+\*\*(?<id>S[0-9]{2})\*\*[ \t]+',
        '(?m)^## [0-9]{4}-[0-9]{2}-[0-9]{2}（台北）｜(?<id>S[0-9]{2})[ \t]*\r?$'
    )
    foreach ($pattern in $patterns) {
        foreach ($match in [regex]::Matches($Markdown, $pattern)) {
            $match.Groups['id'].Value
        }
    }
}

function Assert-ApprovedSources([string]$Markdown) {
    foreach ($id in (Get-SourceIds $Markdown)) {
        if ($id -cne 'S01') { throw "Unapproved source ID: $id" }
    }
}

function Invoke-Check([string]$Name, [scriptblock]$Check) {
    try {
        $detail = & $Check
        [pscustomobject]@{ Name = $Name; Status = '通過'; Detail = ($detail -join ' ') }
    } catch {
        [pscustomobject]@{ Name = $Name; Status = '失敗'; Detail = $_.Exception.Message }
    }
}

$checks = @(
    Invoke-Check '正式 S01 欄位及引用' {
        $sample = "來源 ID：S01`n## 定義（S01，投影片 8.4）"
        Assert-ApprovedSources $sample
        if (@(Get-SourceIds $sample).Count -ne 2) { throw 'Expected two S01 markers' }
        '辨識到兩個 S01 標記。'
    }
    Invoke-Check '正式 S11 欄位' {
        $message = $null
        try { Assert-ApprovedSources '來源 ID：S11' } catch { $message = $_.Exception.Message }
        if ($message -cne 'Unapproved source ID: S11') { throw 'Expected S11 rejection' }
        "如預期拒絕。$message"
    }
    Invoke-Check '含 S11 的 MIT PDF 網址' {
        $sample = '來源 ID：S01' + [char]10 + '[PDF](https://ocw.mit.edu/courses/res-6-007-signals-and-systems-spring-2011/60925ad5f87a9176dfc5ebb8afcf06e1_MITRES_6_007S11_lec08.pdf)'
        Assert-ApprovedSources $sample
        if ((@(Get-SourceIds $sample) -join ',') -cne 'S01') { throw 'Expected only S01' }
        '網址未產生來源 ID，唯一識別結果為 S01。'
    }
    Invoke-Check '實際來源紀錄' {
        $ids = foreach ($doc in (Get-ChildItem -LiteralPath raw,cards,wiki -Recurse -Filter '*.md' -File)) {
            $body = Get-Content -Raw -Encoding UTF8 -LiteralPath $doc.FullName
            Assert-ApprovedSources $body
            Get-SourceIds $body
        }
        if ((@($ids | Sort-Object -Unique) -join ',') -cne 'S01') { throw 'Expected S01 as the only declared source' }
        "辨識 $(@($ids).Count) 處正式標記，唯一來源為 S01。"
    }
    Invoke-Check '本機連結' {
        $count = 0
        foreach ($doc in (Get-ChildItem -LiteralPath raw,cards,wiki -Recurse -Filter '*.md' -File)) {
            $body = Get-Content -Raw -Encoding UTF8 -LiteralPath $doc.FullName
            foreach ($match in [regex]::Matches($body, '\]\((?<target>[^)\r\n]+)\)')) {
                $target = $match.Groups['target'].Value
                if ($target -match '^[a-z][a-z0-9+.-]*:' -or $target.StartsWith('#')) { continue }
                if (-not (Test-Path -LiteralPath (Join-Path $doc.DirectoryName $target) -PathType Leaf)) {
                    throw "Broken link in $($doc.Name): $target"
                }
                $count++
            }
        }
        if ($count -eq 0) { throw 'No local links found' }
        "$count 個本機連結全部存在。"
    }
    Invoke-Check 'PDF SHA-256' {
        $record = Get-Content -Raw -Encoding UTF8 -LiteralPath raw/S01.md
        $expected = [regex]::Match($record, '(?m)^- SHA-256：([A-F0-9]{64})\s*$').Groups[1].Value
        $actual = (Get-FileHash -LiteralPath raw/S01.pdf -Algorithm SHA256).Hash
        if ($actual -cne $expected) { throw "Expected $expected; actual $actual" }
        $actual
    }
)
$checks
if ($checks.Status -contains '失敗') { exit 1 }

