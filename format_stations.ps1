# Parse and generate optimized JS station array
$jsonPath = "C:\Users\RIANO\.gemini\antigravity\scratch\flood-geospatial-app\bmkg_stations.json"
$data = Get-Content -Path $jsonPath -Raw | ConvertFrom-Json

$cleanList = @()
foreach ($st in $data) {
    if ($st.lat -and $st.lng) {
        $lat = [double]$st.lat
        $lng = [double]$st.lng
        $cleanList += [PSCustomObject]@{
            id = $st.id_station
            name = $st.name_station
            lat = $lat
            lon = $lng
            regency = $st.nama_kota
            prov = $st.nama_provinsi
            type = $st.type
            status = "Aktif AWSCenter BMKG"
        }
    }
}

$jsContent = "const OFFICIAL_BMKG_RAIN_STATIONS = " + ($cleanList | ConvertTo-Json -Depth 5 -Compress) + ";"
Set-Content -Path "C:\Users\RIANO\.gemini\antigravity\scratch\flood-geospatial-app\stations_data.js" -Value $jsContent -Encoding UTF8
Write-Host "Generated stations_data.js with $($cleanList.Count) stations"
