param(
    [Parameter(Mandatory = $true)]
    [int]$UploadProcessId,
    [Parameter(Mandatory = $true)]
    [string]$Repo,
    [Parameter(Mandatory = $true)]
    [string]$TagName,
    [Parameter(Mandatory = $true)]
    [string]$ExpectedAssetName
)

$ErrorActionPreference = "Stop"

while (Get-Process -Id $UploadProcessId -ErrorAction SilentlyContinue) {
    Start-Sleep -Seconds 30
}

$release = gh release view $TagName --repo $Repo --json assets,isDraft | ConvertFrom-Json
$assets = @($release.assets | ForEach-Object { $_.name })

if ($assets -contains $ExpectedAssetName) {
    gh release edit $TagName --repo $Repo --draft=false | Out-Null
    Write-Output "Published release $TagName for $Repo"
} else {
    Write-Error "Expected asset not found: $ExpectedAssetName"
}
