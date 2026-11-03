# Windows Server: evidence selection audit

This document records the **curated, private** screenshot candidates selected from the original lab archives. The screenshots in this list are **not uploaded or approved for public display** merely because they appear here. Original archives and unredacted images must remain private.

| Candidate | Supported observation / limit |
|---|---|
| Server Manager roles | Role dashboard; verify exact installed roles before claiming deployment. |
| Windows services | Service-status output; snapshot only. |
| Hyper-V running VMs | Shows VM state, not guest health. |
| DNS Manager | DNS console/records; configuration alone is not successful resolution. |
| Group Policy result | GPO output; report exact observed policy, not general baseline compliance. |
| Hyper-V file-server VM | VM presence; not proof of successful SMB permissions. |
| GPUpdate and mapped drive | gpupdate /force succeeds; Get-PSDrive shows T: mapped to \\FS01\IT. |
| AD domain and forest | Get-ADDomain and Get-ADForest return lab information. |
| AD group and user | Get-ADGroup and Get-ADUser results; no automated onboarding proof. |

## Publication standard

Only upload full-resolution derivatives after checking for user names, email addresses, tenant/subscription/device/object IDs, public IP addresses, hardware serials, recovery keys, secrets, and hidden metadata. A configuration screen is not proof of deployment, a script filename is not proof of execution, and an error is not proof of success.

## Excluded evidence

Duplicated inventory views, empty Drive Maps editor, unassigned or pending Autopilot profile states when presented as successes, and the zero-byte PowerShell script screenshot are not recommended as primary portfolio evidence. They can be documented as troubleshooting only when useful.

## Status

Candidate selection is documented; final full-resolution privacy clearance and image upload have **not** been completed. No claim of successful publication is made here.
