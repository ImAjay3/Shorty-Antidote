# Shortcut Antidote

## Overview
**Shortcut Antidote** is a Windows batch script designed to detect and remove common malware artifacts from infected drives. It's a lightweight cleanup utility that restores hidden files and removes malicious file extensions associated with typical malware infections.

## Purpose
This tool helps users recover from USB flash drive and external drive infections by:
- Removing the hidden file attributes applied by malware
- Deleting common malware file types
- Restoring visibility to legitimate files that were hidden by malware

## Features
- **Interactive Drive Selection**: Prompts user to select the infected drive
- **Input Validation**: Checks if the specified drive exists before processing
- **File Restoration**: Removes hidden (H), read-only (R), and system (S) attributes from all files
- **Malware Removal**: Deletes known malware artifacts:
  - `.lnk` files (shortcut files often used for malware)
  - `.vbs` files (VBScript malware)
  - `.js` files (JavaScript malware)
  - `autorun.inf` (auto-execution files)

## How to Use

1. **Run the Script**:
   - Open Command Prompt (cmd.exe)
   - Navigate to the script directory
   - Execute: `Antidote_Shortcut.cmd`

2. **Enter Drive Letter**:
   - When prompted, enter the drive letter of the infected drive (e.g., `E` or `E:`)
   - The script automatically normalizes input

3. **Wait for Completion**:
   - The script will scan and clean the specified drive
   - Once finished, press any key to exit

## Requirements
- Windows operating system
- Administrator privileges (recommended for full effectiveness)
- Read/Write access to the target drive

## Color Coding
- **Green (0A)**: Initialization and success messages
- **Yellow (0E)**: Status/progress messages
- **Red (0C)**: Warning/processing phase

## How It Works

```
1. Display welcome banner
2. Prompt for infected drive letter
3. Validate drive existence
4. Navigate to target drive
5. Remove file attributes (Hidden, Read-only, System) recursively
6. Delete malware-associated file extensions
7. Display completion message
```

## Important Notes

⚠️ **Warnings**:
- This script performs **destructive operations**. It will permanently delete files.
- **Backup important data** before running this tool
- Use only on drives you are certain are infected
- Test on non-critical drives first
- Requires administrator privileges for full effectiveness

## Limitations

- **Limited Coverage**: Only removes specific file types; advanced malware may require additional tools
- **Broad Approach**: May delete legitimate `.js` or `.vbs` files if they exist
- **No Backup**: Deleted files cannot be recovered from this script
- **Requires Manual Intervention**: User must specify which drive to scan

## Example Usage

```batch
> Antidote_Shortcut.cmd
===============
Shortcut-Antidote
===============

Enter infected drive letter (e.g. E): E
Scanning drive E: ...
Restoring hidden files...
Removing malicious files...

Cleanup completed on E:
```

## Author Notes
This is a lightweight, portable solution ideal for quick cleanup of common USB/external drive infections. For persistent or advanced malware, professional antivirus tools are recommended.

---
**Last Updated**: 2026  
**Version**: 1.0
