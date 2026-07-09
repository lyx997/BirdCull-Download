# Publish BirdCull

## 1. Create a release repository

Replace `<repo>` with your chosen repository name, for example `BirdCull`.

```powershell
gh repo create <repo> --public --source . --remote origin --push
```

If you prefer to create the repository on GitHub first, you can also do that in the browser and then push this folder manually.

## 2. Upload the installer set to GitHub Release

Current installer files:

- `..\installers\win10_11\BirdCull_Setup_win10_win11.exe`
- `..\installers\win10_11\BirdCull_Setup_win10_win11-1.bin`

Create the release:

```powershell
gh release create v1.0.1 `
  "..\installers\win10_11\BirdCull_Setup_win10_win11.exe" `
  "..\installers\win10_11\BirdCull_Setup_win10_win11-1.bin" `
  --title "BirdCull v1.0.1" `
  --notes-file ".\RELEASE_NOTES_v1.0.1.md"
```

## 3. Important note

The `.exe` and `.bin` files belong to the same installer set and should always be uploaded together.
