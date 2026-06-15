# LEO-Satellite-Doppler-Shift-Simulation-and-Report-in-MATLAB
This project simulates the Doppler frequency shift of a Low Earth Orbit (LEO) satellite signal observed at a ground station. The model computes and visualizes Doppler variation over time for different satellite altitudes (600 km, 900 km, and 1200 km) using orbital mechanics and geometric range calculations.

# LEO Satellite Doppler Shift Simulation

This MATLAB project simulates and visualizes the Doppler frequency shift of a satellite signal received from a Low Earth Orbit (LEO) satellite. The simulation is based on orbital mechanics and relative motion between the satellite and a ground station on Earth.

## 📡 Overview

The script calculates the Doppler shift caused by the relative motion between a satellite and an observer on Earth. It evaluates how altitude affects the Doppler profile for different LEO satellite heights:

- 600 km
- 900 km
- 1200 km

The output is a time-domain plot showing Doppler shift (in kHz) versus time (in seconds).

## ⚙️ Physics Model

The simulation uses:

- Earth's gravitational parameter (μ)
- Earth rotation angular velocity (ω₀)
- Orbital angular velocity derived from circular orbit assumption:
  
  \[
  \omega = \sqrt{\frac{\mu}{(R_E + h)^3}}
  \]

- Range geometry between satellite and ground station
- Doppler shift approximation:

  \[
  f_D \propto \frac{dR}{dt}
  \]

## 📊 Output

The script generates a figure showing:

- Doppler shift vs time
- Comparison across 3 different satellite altitudes
- High-resolution exported plots:
  - `.eps`
  - `.png` (600 DPI TIFF export)

## 🧪 Parameters

| Parameter | Description |
|----------|-------------|
| μ | Earth's gravitational constant |
| R_E | Earth radius |
| h | Satellite altitude array |
| c | Speed of light |
| w₀ | Earth's angular rotation rate |

## 📁 Files

- `doppler_simulation.m` → Main MATLAB script
- `fig_3.eps` → Exported vector plot
- `fig_3.png` → High-resolution image output

## 🚀 How to Run

1. Open MATLAB
2. Run the script:
   ```matlab
   doppler_simulation
