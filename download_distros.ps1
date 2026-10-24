$psets = @(
  @{pset=1; name="pitstop"},
  @{pset=1; name="art.frame"},
  @{pset=1; name="big5"},
  @{pset=2; name="librarian"},
  @{pset=2; name="teahouse"},
  @{pset=2; name="ontime"},
  @{pset=3; name="pdxcarpet"},
  @{pset=3; name="happy"},
  @{pset=3; name="variations"},
  @{pset=4; name="air"},
  @{pset=4; name="zelda"},
  @{pset=5; name="parked"},
  @{pset=5; name="eda"},
  @{pset=6; name="measure"},
  @{pset=6; name="believe"}
)

$destDir = "c:\Users\mushfiqur\Desktop\agent\projects\cs50r"

foreach ($p in $psets) {
  $url = "https://cdn.cs50.net/r/2024/x/psets/" + $p.pset + "/" + $p.name + ".zip"
  $zipPath = Join-Path $destDir ($p.name + ".zip")
  Write-Host "Downloading $url..."
  try {
    Invoke-WebRequest -Uri $url -OutFile $zipPath -UseBasicParsing
    Expand-Archive -Path $zipPath -DestinationPath $destDir -Force
    Remove-Item -Path $zipPath -Force
    Write-Host "Extracted $($p.name) successfully."
  } catch {
    Write-Host "Error for $($p.name): $_"
  }
}
