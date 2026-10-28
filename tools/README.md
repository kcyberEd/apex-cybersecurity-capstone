# Screenshot Helper

`save-screenshot.ps1` copies the most recent screenshot from your Screenshots folders into `screenshots\` with the name you specify. It copies (never moves) the file and refuses to overwrite an existing file.

## Usage

From the repo root:

```powershell
powershell -ExecutionPolicy Bypass -File .\tools\save-screenshot.ps1 -Name phase2-putty-session
```

`-Name` is required and must not include the `.png` extension. The script searches:

- `C:\Users\X1\Pictures\Screenshots`
- `C:\Users\X1\OneDrive\Pictures\Screenshots`

It saves the newest `.png` found as `screenshots\<Name>.png`, then prints the source path, modified timestamp, and destination so you can confirm it copied the right image. Use the exact names listed in `screenshots\README.md`.
