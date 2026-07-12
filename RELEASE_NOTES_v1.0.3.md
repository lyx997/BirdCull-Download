# BirdCull v1.0.3

## Downloads

- `BirdCull_Setup_win10_win11_v1.0.3.exe`
- `BirdCull_Setup_win10_win11_v1.0.3-1.bin`
- `BirdCull_Setup_win10_win11_v1.0.3-2.bin`

All `v1.0.3` files are part of the same installer set and must be downloaded together into the same folder before running the `.exe` installer.

## What Changed

- Improved processing speed for high-performance computers.
- Better use of stronger NVIDIA GPUs, larger VRAM, and higher system memory during heavy photo batches.
- Added an ONNX Runtime path for AMD GPU users through DirectML.
- Added an ONNX CPU path for users without a supported NVIDIA GPU, improving CPU-side batch handling compared with the older PyTorch CPU path.
- Faster image preparation, bird detection, and scoring on suitable machines.
- Improved progress feedback when scanning large photo folders.
- Kept the same Free / Full installer flow: install once, start in Free Edition, and unlock Full Edition after activation.

This release mainly improves speed, broadens hardware support, and improves large-batch handling. The output categories, activation flow, and installer structure are unchanged.

## Newly Supported / Recommended Users

`v1.0.3` is recommended for users with:

- High-performance NVIDIA workstations
- RTX 40 / RTX 50 series GPUs
- AMD GPUs that can use DirectML through ONNX Runtime
- CPU-only systems or systems without a supported NVIDIA GPU
- Larger VRAM and 24 GB or more system memory
- Large photo batches where processing speed matters

Use `v1.0.2` if you mainly need the newer CUDA / RTX 50 compatibility package and do not need the latest speed optimizations.

Use `v1.0.1` if you need GPU acceleration on older GTX cards such as:

- `GTX 1050 / 1060 / 1070 / 1080`
- Many `GTX 900` series cards

## System

- Windows 10 / Windows 11
- NTFS recommended for output hard links
- 16 GB RAM or more recommended
- Recent NVIDIA driver recommended for RTX 40 / RTX 50 series GPUs
- AMD GPU users do not need CUDA; use a recent AMD graphics driver and a DirectML-capable Windows system
- If DirectML GPU acceleration is not available, BirdCull can use the ONNX CPU path instead
- Higher VRAM and system memory are recommended for the `v1.0.3` speed optimizations
