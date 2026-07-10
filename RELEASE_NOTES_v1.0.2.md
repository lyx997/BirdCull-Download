# BirdCull v1.0.2

## Downloads

- `BirdCull_Setup_win10_win11_v1.0.2.exe`
- `BirdCull_Setup_win10_win11_v1.0.2-1.bin`

Both files are part of the same installer set and must be downloaded together.

## What Changed

- Upgraded the packaged PyTorch / CUDA runtime to support newer NVIDIA GPUs.
- Added CUDA 12.8 runtime files from the packaged PyTorch environment.
- Added support for `RTX 50` series GPUs such as `RTX 5090`.
- Kept `Pillow` pinned to `11.1.0` after testing because newer Pillow builds were slower in BirdCull's image-preparation workload.
- Installer filenames now include the version number to avoid confusing `v1.0.1` and `v1.0.2` packages.

No BirdCull culling, scoring, activation, or UI workflow logic was changed for this release.

## Which Version Should I Use?

Use `v1.0.2` if you have:

- `NVIDIA RTX 50` series, including `RTX 5090`
- `NVIDIA RTX 40` series
- `NVIDIA RTX 30` series
- `NVIDIA RTX 20` series
- `NVIDIA GTX 16` series

Use `v1.0.1` if you need GPU acceleration on older GTX cards such as:

- `GTX 1050 / 1060 / 1070 / 1080`
- Many `GTX 900` series cards

Very old NVIDIA GPUs may still fall back to CPU mode.

## System

- Windows 10 / Windows 11
- NTFS recommended for output hard links
- 16 GB RAM or more recommended
- Recent NVIDIA driver recommended for RTX 50 series GPUs
