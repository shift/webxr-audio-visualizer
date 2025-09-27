# WebXR AR Audio Waveform Visualizer

A WebXR AR application that visualizes microphone audio as a real-time waveform in augmented reality.

## Features

- Real-time audio visualization using WebAudio API
- Augmented Reality display using WebXR
- Responsive waveform visualization with Three.js
- Microphone access with user permission

## Usage

1. Open the application in a WebXR-compatible browser
2. Allow microphone access when prompted
3. Click "Start AR" to enter AR mode
4. The waveform will appear in front of you, visualizing your microphone input

## Development

This project uses Nix for development environment management.

```bash
# Enter development shell
nix develop

# Or use direnv (recommended)
direnv allow
```

## Deployment

The application is deployed to Netlify and can be accessed at: [URL will be added after deployment]