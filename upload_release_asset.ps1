param(
    [Parameter(Mandatory = $true)]
    [string]$UploadUrl,
    [Parameter(Mandatory = $true)]
    [string]$AssetPath,
    [Parameter(Mandatory = $true)]
    [string]$Token
)

$ErrorActionPreference = "Stop"

$resolvedAsset = (Resolve-Path -LiteralPath $AssetPath).Path
$assetName = [System.IO.Path]::GetFileName($resolvedAsset)
$baseUploadUrl = $UploadUrl -replace '\{\?name,label\}$', ''
$targetUrl = "{0}?name={1}" -f $baseUploadUrl, [System.Uri]::EscapeDataString($assetName)

$headers = @{
    Authorization = "Bearer $Token"
    Accept = "application/vnd.github+json"
    "X-GitHub-Api-Version" = "2022-11-28"
    "Content-Type" = "application/octet-stream"
}

Invoke-RestMethod -Method Post -Uri $targetUrl -Headers $headers -InFile $resolvedAsset
