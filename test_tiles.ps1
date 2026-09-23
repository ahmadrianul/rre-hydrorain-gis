$urls = @(
    'https://server.arcgisonline.com/ArcGIS/rest/services/Canvas/World_Dark_Gray_Base/MapServer/tile/5/16/26',
    'https://server.arcgisonline.com/ArcGIS/rest/services/Canvas/World_Light_Gray_Base/MapServer/tile/5/16/26',
    'https://tile.openstreetmap.org/5/26/16.png'
)
foreach ($u in $urls) {
    try {
        $res = Invoke-WebRequest -Uri $u -Method Head -UserAgent "Mozilla/5.0"
        Write-Host "$u -> Status: $($res.StatusCode)"
    } catch {
        Write-Host "$u -> Error: $($_.Exception.Message)"
    }
}
