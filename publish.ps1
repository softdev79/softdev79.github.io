<#
.SYNOPSIS
  Re-upload the portfolio to its S3 website bucket after you edit index.html or assets/.

.EXAMPLE
  .\publish.ps1            # upload changes
  .\publish.ps1 -Delete    # remove the site and the bucket entirely

  Site: http://vishal-gupta-portfolio-15e240.s3-website.ap-south-1.amazonaws.com
  Requires `aws login`.
#>
param([switch]$Delete)
$ErrorActionPreference = "Continue"
$Bucket = "vishal-gupta-portfolio-15e240"
$Region = "ap-south-1"
Set-Location $PSScriptRoot

if ($Delete) {
  aws s3 rb "s3://$Bucket" --force --region $Region
  Write-Host "Deleted bucket $Bucket (the site is offline)."
  return
}

aws s3 cp index.html "s3://$Bucket/index.html" --region $Region --content-type "text/html; charset=utf-8" --cache-control "no-cache" --only-show-errors
aws s3 sync assets "s3://$Bucket/assets/" --region $Region --delete --content-type "image/webp" --cache-control "public, max-age=604800" --only-show-errors
if ($LASTEXITCODE -eq 0) { Write-Host "Published: http://$Bucket.s3-website.$Region.amazonaws.com" }
