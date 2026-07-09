# Third-Party Notices

BirdCull is distributed as proprietary closed-source software. See [License Notice](LICENSE.en.md).

The current Windows release also bundles or depends on third-party open-source components. Those components remain subject to their own licenses, copyright notices, and attribution requirements.

Based on a review of the current bundled core dependencies in this repository and packaging flow, BirdCull appears suitable for closed-source binary distribution. In particular, we did not identify a core bundled dependency that, by itself, would require BirdCull application source code to be disclosed solely because BirdCull is distributed in binary form.

This is a practical release note for end users, not legal advice. If you need a formal compliance opinion for commercial distribution, resale, OEM bundling, or enterprise procurement, obtain a professional legal review.

## Current core components reviewed

- `RF-DETR` (`rfdetr`) - Apache License 2.0
- `PyTorch` (`torch`, `torchvision`) - BSD-style licenses
- `NumPy` - BSD-style license
- `OpenCV` (`opencv-python`) - Apache License 2.0
- `cryptography` - permissive open-source license family
- `PyInstaller` - GPL with PyInstaller exception for building and distributing proprietary applications

## What this means for BirdCull releases

- BirdCull itself is not published here as open-source software.
- This release repository is for installers, release notes, and end-user information.
- Third-party open-source components keep their own license terms.
- When required by those licenses, notices and attributions should be preserved with the release materials.

If later releases add new dependencies, replace bundled runtime libraries, or change distribution channels, this notice should be reviewed again.
