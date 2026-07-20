# BirdCull v1.0.5

## Downloads

Windows:

- `BirdCull_Setup_win10_win11.exe`
- `SHA256SUMS.txt`

The Windows installer is now a single complete `.exe` file. Download and run `BirdCull_Setup_win10_win11.exe`; no companion `.bin` files are required for this release.

macOS:

- The Apple silicon macOS build remains available from `v1.0.4`.

## What Changed

- Added Star XMP Output for Lightroom, Bridge, Photo Mechanic, and similar review workflows.
- Added a clear output-mode choice between Folder Rating Output and Star XMP Output.
- Star XMP Output writes same-basename visible `.xmp` sidecars beside the rated photo hard links.
- XMP descriptions include capture time, star rating, rating reason, total score, burst information, and eye/head detection notes.
- Kept Folder Rating Output as the default workflow with `Top`, `Candidate`, `Review`, and `Rejected` groups.
- Restored frequent processing-stage preview updates so users can see detection results while processing is active.
- Updated the Windows installer build to produce one complete installer `.exe` instead of split `.exe` plus `.bin` payload files.
- Added a reusable `-SingleFile` build option to the Windows installer script.
- Fixed packaged builds accidentally loading an older `xmp_core.pyd` instead of the current XMP writer code.
- Shows `v1.0.5` next to the BirdCull title in the app header.

## Output Modes

### Folder Rating Output

This is the default mode. BirdCull creates hard-link result folders:

- `Top`
- `Candidate`
- `Review`
- `Rejected`

Use this mode when you want to review or move files directly in the file manager.

### Star XMP Output

Use this mode when your next step is a photo-management or editing app. BirdCull writes visible `.xmp` sidecars that carry star ratings and a human-readable description.

Expected star mapping:

- `5 Stars`: strongest keepers
- `4 Stars`: strong candidates
- `3 Stars`: review
- `2 Stars` / `1 Star`: lower-priority or rejected results

Original RAW files remain in their source folders. The output date folders contain hard links plus matching XMP sidecars.

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

## System

- Windows 10 / Windows 11
- NTFS recommended for hard-link output
- 16 GB RAM or more recommended

## SHA-256

```text
ce9ed0449d9fd928ba6689a9b52a4cd3317ed0489d3c67a554c5b9e938aa7e74  BirdCull_Setup_win10_win11.exe
```
