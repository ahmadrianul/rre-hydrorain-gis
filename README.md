# RRE HydroRain GIS - Satellite Rainfall Telemetry & Risk Engineering Platform

> **A professional geospatial web application for precision satellite precipitation analysis, hydro-meteorological risk engineering, and multi-provider rainfall telemetry across Indonesia and global coordinates.**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![GitHub Pages](https://img.shields.io/badge/Deployment-GitHub%20Pages-success.svg)](https://pages.github.com/)
[![Leaflet](https://img.shields.io/badge/GIS-Leaflet%20v1.9.4-brightgreen.svg)](https://leafletjs.com/)
[![Chart.js](https://img.shields.io/badge/Charts-Chart.js%20v4-orange.svg)](https://www.chartjs.org/)

---

## 🌧️ Overview

**RRE HydroRain GIS** (*Rianul Risk Engineering & Satellite Rainfall Telemetry*) is a standalone, client-side geospatial intelligence platform developed for engineering risk assessment, hydrologic monitoring, and high-precision precipitation telemetry. 

By integrating multi-source satellite reanalysis and remote sensing engines, it allows risk engineers, insurance underwriters, agronomists, and researchers to query accurate hourly rainfall accumulation ($mm$) at any geographical coordinate without requiring manual ground-station downloads or backend server dependencies.

---

## 🛰️ Multi-Satellite Precipitation Engines

Users can seamlessly switch between three world-class satellite precipitation providers:

1. **ECMWF ERA5 (Europe)**:
   - *Source*: European Centre for Medium-Range Weather Forecasts & Copernicus Climate Change Service.
   - *Features*: High-resolution atmospheric reanalysis (~0.25° grid) combining global model physics with observational data assimilation.
2. **JAXA GSMaP (Japan)**:
   - *Source*: Japan Aerospace Exploration Agency (JAXA).
   - *Features*: High-accuracy global precipitation mapping derived from multi-satellite microwave radiometers and geostationary infrared sensors.
3. **USGS CHIRPS (United States)**:
   - *Source*: Climate Hazards Center (UC Santa Barbara) & US Geological Survey (USGS).
   - *Features*: Quasi-global high-resolution (~0.05° / ~5 km) infrared precipitation estimates specifically designed for drought, flood, and climate hazard monitoring.

---

## ✨ Key Features

- 📍 **Precision Search & Geocoding**: Search any location by address, village, district, city, or direct numerical coordinates (`-2.879304, 120.190825`) powered by OpenStreetMap Nominatim.
- 🎯 **Interactive Draggable Pin**: Freely move the location pin anywhere on the map to automatically trigger re-analysis for the new exact coordinates.
- ⏱️ **Exact Hourly & Multi-Day Time Slicing**: Custom start and end datetime picker allowing precise filtering from sub-day intervals (e.g., 2 hours, 6 hours, 12 hours) to multi-day events (24h, 48h, 7 days) with adaptive X-axis formatting.
- 📊 **Dynamic Hydrograph Chart**: Clean, interactive hourly telemetry line chart rendering total accumulation, hourly rainfall distribution, and peak precipitation rates ($mm/\text{hr}$).
- 🗺️ **Comprehensive GIS Basemaps**:
  - Google Maps Satellite (Hybrid)
  - Google Maps Streets
  - CartoDB Dark Matter (Dark Mode)
  - CartoDB Positron (Light Mode)
- 🖨️ **Executive Reporting**: One-click print-ready reporting layout formatted for corporate engineering risk audits.
- ⚡ **Zero-Backend Architecture**: 100% client-side HTML5/CSS3/ES6 JavaScript. Ready for instant deployment on GitHub Pages, Vercel, or Netlify.

---

## 📁 Repository Structure

```
flood-geospatial-app/
├── index.html        # Main application layout and UI structure
├── style.css         # Corporate dark-mode design system & responsive styling
├── main.js           # Core GIS logic, API integration & Chart.js engine
└── README.md         # English project documentation
```

---

## 🛠️ Built With

- **HTML5 & Vanilla ES6+ JavaScript**: Lightweight, ultra-fast performance with zero framework overhead.
- **Leaflet.js (v1.9.4)**: Interactive mapping and geospatial visualization.
- **Chart.js**: Real-time responsive line chart rendering.
- **Open-Meteo Archive API**: Open-access historical and reanalysis precipitation data engine.
- **OpenStreetMap Nominatim**: Geocoding and reverse-geocoding service.
- **FontAwesome & Google Fonts (Inter, Outfit)**: Modern corporate typography and iconography.

---

## 🚀 Local Installation & Quick Start

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/rre-hydrorain-gis.git
   ```
2. Navigate to the project folder:
   ```bash
   cd rre-hydrorain-gis
   ```
3. Open `index.html` in your favorite web browser (Google Chrome, Mozilla Firefox, Microsoft Edge, Safari). No web server setup or npm build step required!

---

## 🌐 Deploying to GitHub Pages

1. Push this repository to your GitHub account.
2. Go to **Settings** > **Pages** inside your repository on GitHub.
3. Under **Branch**, select `main` (or `master`) and `/ (root)` folder, then click **Save**.
4. Your website will be live in seconds at:
   ```
   https://<your-username>.github.io/<repository-name>/
   ```

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---

© 2026 **Rianul Risk Engineering (RRE)**. All Rights Reserved.
