# BirdCull v1.0.4

## Downloads

- `BirdCull_macOS_v1.0.4.dmg`
- `SHA256SUMS.txt`

This release provides the first macOS disk image for BirdCull. Download the DMG, open it, and drag `BirdCull.app` to the `Applications` folder shown in the window.

## What Changed

- Added an Apple silicon macOS build with bundled Core ML detector and bird-eye/head models.
- Aligned the packaged Python, NumPy, OpenCV, Pillow, RF-DETR, and Core ML runtime with the source-tested environment.
- Fixed source/App result differences caused by image preprocessing changes between dependency versions.
- Fixed Core ML cross-process result drift by using the deterministic CPU compute path on macOS.
- Moved runtime logs outside the application bundle so normal use no longer invalidates the app signature.
- Added release-build dependency checks to prevent future environment drift.

This release focuses on making the packaged macOS application produce the same culling results as the verified source runtime.

## Installation

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

- macOS 11 or later
- Apple silicon Mac (`arm64`)
- 16 GB RAM recommended
- Local or APFS-formatted storage recommended for hard-link output

## Verification

SHA-256 for `BirdCull_macOS_v1.0.4.dmg`:

`2773ef0e8846c57cbbd447b3fd65ff87e059a226bea8ad948e3b294e53b25960`
