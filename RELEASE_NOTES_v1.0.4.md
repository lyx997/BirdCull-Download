# BirdCull v1.0.4

## Downloads

Windows installer set:

- `BirdCull_Setup_win10_win11.exe`
- `BirdCull_Setup_win10_win11-1.bin`
- `BirdCull_Setup_win10_win11-2.bin`
- `BirdCull_Setup_win10_win11-3.bin`
- `BirdCull_Setup_win10_win11-4.bin`
- `SHA256SUMS.txt`

macOS:

- `BirdCull_macOS_v1.0.4.dmg`
- `SHA256SUMS.txt`

All Windows installer files are part of the same installer set. Download the `.exe` and all `.bin` files into the same folder before running the `.exe` installer.

For macOS, download the DMG, open it, and drag `BirdCull.app` to the `Applications` folder shown in the window.

## What Changed

- Added the first Apple silicon macOS build with bundled Core ML detector and bird-eye/head models.
- Added the Windows `v1.0.4` installer set from the current packaged Windows build.
- Shows `v1.0.4` next to the BirdCull title in the app header.
- Fixed a UI state issue where processing could still show "Background model warm-up in progress" after image handling had already started.
- Keeps GPU ROI sharpness behind the hardware/config gate so 8 GB GPU / 16 GB RAM systems stay on the faster CPU sharpness pipeline by default.
- Restored the faster 32-bit OpenCV Sobel path for CPU sharpness scoring on the Windows CUDA runtime.
- Filters visible and legacy output folders during source scans so rerunning the same folder does not treat previous hard-link outputs as new input photos.
- Refreshed `requirements.txt` from the verified `rfdetr_cuda` build environment.
- Aligned the packaged macOS Python, NumPy, OpenCV, Pillow, RF-DETR, and Core ML runtime with the source-tested environment.
- Fixed macOS source/App result differences caused by image preprocessing changes between dependency versions.
- Fixed Core ML cross-process result drift by using the deterministic CPU compute path on macOS.
- Moved macOS runtime logs outside the application bundle so normal use no longer invalidates the app signature.
- Added release-build dependency checks to prevent future environment drift.

## Windows Notes

The Windows build uses the same single-installer Free / Full flow:

- Install once and start in Free Edition.
- Activate inside the app to unlock the Full Edition.
- No separate trial installer is required.

Recommended Windows users:

- NVIDIA RTX 20 / 30 / 40 / 50 series
- NVIDIA GTX 16 series
- AMD GPU users through DirectML / ONNX Runtime when available
- CPU-only systems through the ONNX CPU fallback

Use `v1.0.1` if you need GPU acceleration on older GTX cards such as:

- `GTX 1050 / 1060 / 1070 / 1080`
- Many `GTX 900` series cards

## macOS Installation

1. Download and open `BirdCull_macOS_v1.0.4.dmg`.
2. Drag the `BirdCull` app icon onto the `Applications` folder icon.
3. Wait for copying to finish, then eject the `BirdCull 1.0.4` disk image.
4. Open BirdCull from the macOS `Applications` folder. You do not need to keep the DMG mounted.

## First Launch on macOS

This build is ad-hoc signed but not Apple-notarized. macOS may show a warning that Apple cannot verify whether `BirdCull` contains malware, especially when the DMG was downloaded from GitHub.

If macOS blocks the first launch:

1. Drag the app from the DMG to `Applications`.
2. Do not double-click BirdCull for the first launch.
3. Hold `Control`, click `BirdCull`, then choose **Open**.
4. If macOS still blocks it, open **System Settings > Privacy & Security**, then click **Open Anyway** near the bottom.

Only use this workaround after confirming that the download came from this repository.

## System

- Windows 10 / Windows 11 for the Windows installer
- macOS 11 or later on Apple silicon for the macOS DMG
- NTFS recommended on Windows for hard-link output
- APFS/local storage recommended on macOS for hard-link output
- 16 GB RAM or more recommended

## SHA-256

```text
66c0864e4799a63e80c909f3648b9b3a55fce59ba9286a9165749dc61ace580d  BirdCull_Setup_win10_win11.exe
c076d423eb9b26230a6e88928b276aaf86392f6d5a9b6bea52ffbbfd86feb759  BirdCull_Setup_win10_win11-1.bin
899f1835ca65ad636750388db642cc7850b2cc3a216c99350bc8ce3319349d8e  BirdCull_Setup_win10_win11-2.bin
cb0e9de589d9ba1c95fd3bef6135cf6e83e0c4ffda315c2412790f5bc35180bf  BirdCull_Setup_win10_win11-3.bin
6c2dae4f67b08b5d6c22fbd065e9f5e029b034484f9b538b10584223622cb349  BirdCull_Setup_win10_win11-4.bin
2fe0915c825a188ed9b96479fda377601407e5f84dd659ed183969d9cfaf5a64  BirdCull_macOS_v1.0.4.dmg
```
