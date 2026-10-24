$names = @('pitstop', 'art.frame', 'big5', 'teahouse', 'librarian', 'ontime', 'carpet', 'happy', 'variations', 'air', 'zelda', 'parked', 'eda', 'measure', 'believe', 'project')
foreach ($n in $names) {
  $url = "https://raw.githubusercontent.com/cs50/problems/2024/r/$n/__init__.py"
  try {
    $content = (Invoke-WebRequest -Uri $url -UseBasicParsing).Content
    $dir = "c:\Users\mushfiqur\Desktop\agent\projects\cs50r\_specs\$n"
    New-Item -ItemType Directory -Force -Path $dir | Out-Null
    Set-Content -Path (Join-Path $dir "__init__.py") -Value $content
    Write-Host "Saved $n/__init__.py"
  } catch {
    Write-Host "Failed $n"
  }
}
