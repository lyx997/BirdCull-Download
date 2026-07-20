<p align="center">
  <a href="README.md">简体中文</a> |
  <a href="README.en.md">English</a>
</p>

<p align="center">
  <img src="assets/birdcull_app.png" alt="BirdCull icon" width="96">
</p>

<h1 align="center">BirdCull</h1>

<p align="center">
  Desktop culling for bird photographers
</p>

<p align="center">
  <img src="assets/屏幕截图(4).png" alt="BirdCull interface" width="960">
</p>

BirdCull helps you finish the most time-consuming first pass of bird photo selection. It surfaces the stronger shots from each burst so you can move faster into review, editing, and delivery.

## Download

- [Download the latest release](../../releases/latest)
- [Browse all releases](../../releases)

## Download And Install

Open the [latest release page](../../releases/latest), then download the files for your system:

| System | What To Download | How To Install |
| --- | --- | --- |
| `Windows 10 / Windows 11` | Download `BirdCull_Setup_win10_win11.exe` | Run the `.exe` installer |
| Apple silicon Mac | Download `BirdCull_macOS_v1.0.4.dmg` | Open the `.dmg`, then drag `BirdCull.app` to `Applications` |

Starting with `v1.0.5`, the Windows build is a single complete installer. You no longer need separate `.bin` payload files next to the `.exe`.  
If the release only shows Windows files, use the Windows build. If it shows a macOS DMG, make sure your Mac is an Apple silicon model.

## Device, System, And Version Choice

Choose the installer that matches your system and GPU. Do not mix the newer and older CUDA runtime builds:

| Version | Supported Systems | Recommended Devices / GPUs | Notes |
| --- | --- | --- | --- |
| `v1.0.5` | `Windows 10 / Windows 11` | Newer Windows PCs, `NVIDIA RTX 20/30/40/50`, `GTX 16`, AMD/CPU fallback | Latest Windows release, recommended first |
| `v1.0.4` | `Windows 10 / Windows 11`; Apple silicon macOS | Newer Windows PCs, `NVIDIA RTX 20/30/40/50`, `GTX 16`, AMD/CPU fallback; Apple silicon Macs | Windows split installer set and Apple silicon macOS build |
| `v1.0.3` | `Windows 10 / Windows 11` | `NVIDIA RTX 20/30/40/50`, `GTX 16`, AMD DirectML, ONNX CPU | Broad Windows hardware support |
| `v1.0.2` | `Windows 10 / Windows 11` | `NVIDIA RTX 20/30/40/50`, `GTX 16` | CUDA compatibility build with `RTX 50` support |
| `v1.0.1` | `Windows 10 / Windows 11` | Some older `GTX` GPUs, including `GTX 900` and `GTX 10` series | Legacy GPU compatibility build |

`v1.0.5` is the latest Windows release line.  
`v1.0.4` still provides the Apple silicon macOS build.  
If you use a `GTX 1050 / 1060 / 1070 / 1080` class `GTX 10` GPU and want GPU acceleration, download `v1.0.1` first.  
If your GPU is outside the supported range, BirdCull may still run through CPU or ONNX fallback, but processing will be slower.

## Version Updates

The latest release is `v1.0.5`:

- Windows now ships as one complete `.exe` installer instead of a split `.exe` plus `.bin` installer set
- Added two output modes: folder-based rating output, and star/XMP output for Lightroom, Bridge, and Photo Mechanic workflows
- Star output writes photo hard links and matching `.xmp` files into date folders while keeping original RAW files in place
- XMP descriptions include capture time, star rating, reason, score, burst information, and eye/head detection notes
- Shows `v1.0.5` next to the BirdCull title in the app
- Fixed packaged builds accidentally loading an older `xmp_core.pyd` instead of the current XMP logic
- Restored frequent processing-stage preview updates so detection results stay visible while the run is active

See [v1.0.5 release notes](RELEASE_NOTES_v1.0.5.md) for the full changelog.

## What BirdCull Does

- Analyzes bird head, eye, sharpness, pose, and within-burst differences
- Organizes results into `Top`, `Candidate`, `Review`, and `Rejected`
- Can output either grouped result folders or star-rated XMP metadata for post-processing tools
- Uses hard links for output instead of copying your original photos
- Supports both Chinese and English UI
- Lets you activate the full version from inside the app

## Editions

BirdCull now uses a single installer. There are no separate Free and Full installers:

- You can start with the free edition right after installation
- The free edition is meant to let you experience the core workflow
- Activating the full edition unlocks the app without reinstalling

Current free-edition rule:

- Up to the first `200` photos per capture date

If you need the full edition, open the activation window inside the app, copy the device code, and contact the developer for a license.

## Before You Install

- You are using `Windows 10` or `Windows 11`
- Your photos are stored on a local drive or an external drive
- The drive supports hard links, ideally `NTFS`
- Recommended hardware: `NVIDIA RTX` series GPU and `16 GB` RAM or more
- Use `v1.0.5` for the latest Windows build
- Use `v1.0.2` or newer for `RTX 50` series GPUs
- Use the `v1.0.1` compatibility build for `GTX 10` series and some older `GTX` GPUs

If your photo folder is on a filesystem that does not support hard links, BirdCull will ask you to move or copy it to a local `NTFS` drive first.

## Quick Start

1. Install and open BirdCull
2. Choose your photo folder
3. Choose an output mode
4. Set the date range you want to process
5. Click `Start`
6. Review the results according to the output mode you selected

## Output Behavior

BirdCull supports two mutually exclusive output modes.

### Folder Rating Output

This is the default mode. BirdCull does not duplicate your original photos into rating folders. It creates grouped hard-link outputs:

- `Top`: keep first
- `Candidate`: strong backup picks worth a second look
- `Review`: check again
- `Rejected`: remove first

This mode works well when you want to review, move, or deliver files directly from the file manager.

### Star XMP Output

Star output writes metadata that post-processing tools can read:

- Creates hard links for rated photos
- Writes matching same-basename `.xmp` files in the same date folder
- Converts BirdCull scores into `5 Stars`, `4 Stars`, `3 Stars`, `2 Stars`, or `1 Star`
- Stores reason, score, burst-group information, and eye/head detection notes in the XMP description

This mode is intended for Lightroom, Bridge, Photo Mechanic, and similar workflows. Standard `.xmp` sidecars are visible files beside the corresponding RAW hard links, not hidden internal cache files.

## Activation And Privacy

BirdCull includes a built-in activation flow. During activation, it creates a device code on your computer to confirm that the license belongs to this machine.

BirdCull is designed so that it:

- does not upload your photos
- does not upload photo paths
- does not upload EXIF metadata
- does not store raw hardware identifiers
- only uses non-reversible device verification data for licensing

## FAQ

### Why Did The Free Edition Not Process Everything?

The free edition is currently meant to demonstrate the core culling workflow:

- Up to the first `200` photos per capture date

If you want to process full batches, activate the full edition.

### Why Does BirdCull Say The Selected Folder Cannot Be Used For Output?

BirdCull relies on hard links for output. If the photo folder is on a drive or filesystem that does not support hard links, move or copy the photos to a local `NTFS` drive and load the folder again.

### Can I Use It Immediately After Installation?

Yes. The app starts in the free edition, so you can try the main workflow right away and activate the full edition only when you need it.

### Does It Work With Lightroom?

Yes. Use Star XMP Output to write `.xmp` star ratings and descriptions, then continue in Lightroom, Bridge, or Photo Mechanic.

## Update Advice

If you already have an older version installed, it is best to install the latest version over it.  
If you run into issues, updating to the newest release is also the first thing worth trying.

## Closed-Source Distribution And Third-Party Components

BirdCull itself is distributed here as closed-source software.

Based on the current packaged dependencies reviewed for this release, we did not find a core bundled dependency that would automatically require publishing BirdCull source code solely because BirdCull is distributed as a binary installer.

BirdCull's closed-source license notice is here: [License Notice](LICENSE.en.md).

Third-party component notes are here: [Third-Party Notices](THIRD_PARTY_NOTICES.en.md).

## Contact

- Email: `glamecke@gmail.com`
- Xiaohongshu: `热爱观鸟的Salamence`

## Notes

This repository is for BirdCull installers and release notes. It is meant for end users rather than developers.
