# BirdCull v1.0.3

## Downloads

- `BirdCull_Setup_win10_win11_v1.0.3.exe`
- `BirdCull_Setup_win10_win11_v1.0.3-1.bin`
- `BirdCull_Setup_win10_win11_v1.0.3-2.bin`

All `v1.0.3` files are part of the same installer set and must be downloaded together into the same folder before running the `.exe` installer.

## What Changed

- Optimized the processing pipeline for high-performance workstations, especially machines with stronger NVIDIA GPUs, more VRAM, and higher system memory.
- Improved the runtime resource policy so capable machines can spend less time waiting in image preparation, detection, and scoring stages.
- Added GPU-assisted ROI sharpness preparation for suitable high-performance systems, reducing CPU-side bottlenecks in heavier photo batches.
- Improved folder scanning progress feedback so large folders show useful progress while images are being collected.
- Kept the merged Free / Full installer flow: BirdCull still starts in Free Edition and unlocks Full Edition after activation.

This release focuses on processing-speed improvements for capable machines. It does not change the basic output categories, activation flow, or versioned installer layout.

## Which Version Should I Use?

Use `v1.0.3` if you have a high-performance NVIDIA system and want the newest processing-speed optimizations.

Use `v1.0.2` if you mainly need the RTX 50 / newer CUDA compatibility package and do not need the latest speed-tuning changes.

Use `v1.0.1` if you need GPU acceleration on older GTX cards such as:

- `GTX 1050 / 1060 / 1070 / 1080`
- Many `GTX 900` series cards

## System

- Windows 10 / Windows 11
- NTFS recommended for output hard links
- 16 GB RAM or more recommended
- Recent NVIDIA driver recommended for RTX 40 / RTX 50 series GPUs
- Higher VRAM and system memory are recommended for the `v1.0.3` speed optimizations

