param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$FileName,

    [string[]]$Categories = @("Jekyll", "Tutorial"),
    [string[]]$Tags = @("jekyll", "github-pages", "ruby"),
    [string]$TemplatePath = (Join-Path $PSScriptRoot ".post-template.md"),
    [switch]$NoOpen
)

function Normalize-PostTitle {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Title
    )

    $trimmed = $Title.Trim()
    $trimmed = $trimmed -replace "\.md$", ""
    $normalized = $trimmed -replace "\s+", "-"
    $normalized = $normalized -replace '[<>:"/\\|?*]', ""
    $normalized = $normalized.Trim("-")

    return $normalized
}

function Build-YamlArrayText {
    param(
        [Parameter(Mandatory = $true)]
        [string[]]$Values
    )

    $clean = $Values | Where-Object { $_ -and $_.Trim() } | ForEach-Object { $_.Trim() }
    if (-not $clean -or $clean.Count -eq 0) {
        return "[]"
    }

    $quoted = $clean | ForEach-Object {
        $value = $_.Replace('"', '\\"')
        '"' + $value + '"'
    }

    return "[" + ($quoted -join ", ") + "]"
}

$dateStr = (Get-Date).ToString("yyyy-MM-dd")
$normalized = Normalize-PostTitle -Title $FileName

if ([string]::IsNullOrWhiteSpace($normalized)) {
    throw "请输入文章标题，格式例如：./new-post.ps1 '测试文章'"
}

$postFileName = "{0}-{1}.md" -f $dateStr, $normalized
$postDir = Join-Path $PSScriptRoot "_posts"

if (-not (Test-Path $postDir)) {
    New-Item -ItemType Directory -Path $postDir | Out-Null
}

$postPath = Join-Path $postDir $postFileName
$titleText = $normalized -replace "-", " "
$now = (Get-Date).ToString("yyyy-MM-dd HH:mm")

$categoriesText = Build-YamlArrayText -Values $Categories
$tagsText = Build-YamlArrayText -Values $Tags

$defaultTemplate = @"
---
layout: post
title: "$titleText"
date: $now +0800
categories: $categoriesText
tags: $tagsText
---

写文章正文内容...

## 背景

在这里写背景介绍。

## 关键点

- 关键点 1
- 关键点 2
- 关键点 3

## 代码示例

```bash
echo "Hello Jekyll"
```

## 总结

总结这篇文章的要点。
"@

if (Test-Path $TemplatePath) {
    $templateContent = Get-Content -Path $TemplatePath -Raw -Encoding UTF8
    $content = $templateContent
    $content = $content.Replace("{title}", $titleText)
    $content = $content.Replace("{date}", "$now +0800")
    $content = $content.Replace("{categories}", $categoriesText)
    $content = $content.Replace("{tags}", $tagsText)
} else {
    $content = $defaultTemplate
}

Set-Content -Path $postPath -Value $content -Encoding UTF8

Write-Host "已创建文章: $postPath"

if (-not $NoOpen) {
    try {
        $codeCmd = Get-Command code -ErrorAction Stop
        & $codeCmd.Source --reuse-window $postPath
        Write-Host "已用 VS Code 打开文章。"
    } catch {
        try {
            Start-Process $postPath
            Write-Host "已用默认程序打开文章。"
        } catch {
            Write-Host "已创建文件，但未能自动打开。你可以手动打开: $postPath"
        }
    }
} else {
    Write-Host "已创建文件，未自动打开。"
}
