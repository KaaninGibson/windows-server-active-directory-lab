# Windows Server Lab — Screenshot Evidence Gallery

Eight screenshots were selected and privately reviewed for redaction. **The image binaries are not yet hosted in this repository**. The captions below are ready for publication alongside the images when they can be transferred safely. No screenshot is represented as uploaded until it appears in the repository.

| # | Intended image filename | Visible result | Evidence limitation |
|---|---|---|---|
| 1 | `01_HyperV_Running_VMs.png` | Hyper-V Manager shows DC01 and CLIENT01 in Running state | Does not establish guest OS or domain health |
| 2 | `02_HyperV_Time_Sync.png` | PowerShell reports DC01 Hyper-V Time Synchronization integration service `Enabled: False` | Does not establish a correct domain time hierarchy |
| 3 | `03_AD_Domain_Forest.png` | `Get-ADDomain` and `Get-ADForest` return `corp.northstarlab.test` and domain/forest mode information | Does not demonstrate a domain health or security audit |
| 4 | `04_Disk_Inventory.png` | `Get-Disk` shows an online GPT disk and an offline RAW disk | Inventory only; not proof of storage configuration |
| 5 | `05_AD_User_Group.png` | PowerShell displays `GG_IT_Users` and an enabled fictional test user | Does not prove membership in the displayed group |
| 6 | `06_Account_Lockout_Test.png` | PowerShell shows test-user creation, group-membership inspection, and `LockedOut: False` | **Not proof of a successful lockout test** |
| 7 | `07_Backup_Initiation.png` | Windows Server Backup is installed and `wbadmin start systemstatebackup` has begun | **Not proof that backup completed or restored successfully** |
| 8 | `08_PowerShell_Script_Inspection.png` | A PowerShell script filename and parsing-related commands appear in the shell | **Not proof of successful script execution** |

## Security and privacy

The selected copies were cropped or redacted to reduce host, identifier and backup-volume exposure. Fictional lab account names and the lab-only domain remain visible for context. The screenshots should receive a final full-resolution check before publication. Original archives and unsanitized screenshots must remain private.

## Next publication step

Upload the eight approved images to `evidence/` and update this gallery with relative Markdown image references only after the uploads have succeeded. Never replace the evidence with unrelated illustrative screenshots.
