# Extract full BMKG AWSCenter station dataset to bmkg_stations.json
$inputPath = "C:\Users\RIANO\.gemini\antigravity\brain\34f70387-d1c6-42a0-9856-ef9c56e9086c\.system_generated\steps\464\content.md"
$outputPath = "C:\Users\RIANO\.gemini\antigravity\scratch\flood-geospatial-app\bmkg_stations.json"

$raw = Get-Content -Path $inputPath -Raw
if ($raw -match '(?s)(\[.*\])') {
    $json = $matches[1].Trim()
    Set-Content -Path $outputPath -Value $json -Encoding UTF8
    $stations = $json | ConvertFrom-Json
    Write-Host "SUCCESS: Extracted $($stations.Count) official BMKG stations into $outputPath"
} else {
    Write-Host "ERROR: JSON array not matched"
}
