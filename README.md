# WebXR AR Directional Audio Visualizer

A WebXR AR application that visualizes audio sources in 3D space, showing waveforms as overlays where sounds are coming from in the real world.

## Features

- **Directional Audio Detection**: Uses stereo microphone input to estimate sound source direction
- **3D Audio Visualization**: Displays circular waveforms at estimated source locations  
- **Multiple Source Tracking**: Supports up to 4 simultaneous audio sources
- **Real-time Processing**: Live stereo audio analysis with smooth position interpolation
- **AR Overlay System**: Waveforms appear as 3D overlays in augmented reality
- **Intensity-based Scaling**: Visual elements scale based on audio intensity
- **Color-coded Sources**: Each audio source has a unique color for easy identification

## Usage

1. Open the application in a WebXR-compatible browser
2. Click "Enable Audio" and allow stereo microphone access when prompted
3. Click "Start AR" to enter AR mode  
4. Move around and make sounds - waveforms will appear as 3D overlays where sounds are detected
5. Multiple sound sources will be tracked simultaneously with different colors

## How It Works

The app uses **stereo audio analysis** to estimate sound source direction:
- Left/right channel balance indicates horizontal direction
- Audio intensity determines visualization strength and size
- Circular waveforms appear at calculated 3D positions in AR space
- Sources fade out when audio stops, with smooth position interpolation

## Development

This project uses Nix for development environment management.

```bash
# Enter development shell
nix develop

# Or use direnv (recommended)
direnv allow
```

## Deployment

The application is deployed to Netlify and can be accessed at: https://webxr-audio-visualizer.netlify.app

## GitHub Repository

Source code: https://github.com/shift/webxr-audio-visualizer