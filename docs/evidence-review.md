# Evidence Review and Publication Checklist

This page tracks the process for adding **sanitized, verifiable evidence** to the Windows Server and Active Directory portfolio.

## Current status

- Technical documentation is published.
- The original screenshot archives are **not** published here.
- A preliminary review identified candidate screenshots, but they have **not** been individually approved for public release.
- No screenshot is treated as proof of successful configuration until its visible settings and outcome have been checked.

## Evidence to prioritize

| Lab area | Useful evidence | Verification required |
| --- | --- | --- |
| Active Directory | Domain and OU structure; security groups | Confirm the correct domain and configured objects |
| DNS / DHCP | Scope, leases, forwarders, name-resolution tests | Show configuration **and** a successful test |
| Group Policy | GPO settings and workstation policy results | Confirm applied settings on CLIENT01, not just a configured GPO |
| FS01 file services | Share and NTFS permissions, mapped drives | Demonstrate authorized and denied access |
| Backup and recovery | Backup status, AD Recycle Bin recovery | Distinguish alternate-location installation-media restore from a full domain-controller restore |
| PowerShell | User lifecycle output and audit CSV | Match output to a verified script or documented command |

## Screenshot review procedure

1. Inspect the original at full resolution and identify the exact claim it supports.
2. Check whether the image shows **configuration**, **successful validation**, **troubleshooting**, or **an incomplete step**.
3. Redact passwords, tokens, recovery keys, real email addresses, tenant/subscription/object/device IDs, hardware hashes, and any customer or employer details.
4. Confirm that redaction did not conceal the relevant technical result.
5. Save only the reviewed derivative with a neutral filename and a caption explaining the result.
6. Link the approved evidence from the relevant technical document.

## Publication rules

- **Do not upload the raw screenshot archives** to this public repository.
- A policy configuration screen alone is not evidence that a policy applied.
- An error screen is troubleshooting evidence, not proof of completion.
- Do not claim a complete domain-controller restore based on the documented alternate-location AD installation-media restore exercise.
- Keep Entra/Intune, Conditional Access, Autopilot, and Azure evidence in appropriately scoped portfolio projects rather than implying they are part of this Windows Server repository.
- For Autopilot, distinguish imported hardware hash and assigned profile from a full post-wipe OOBE deployment, which has not been verified.

## Publication progress

**Pending:** Individual screenshot inspection, redaction, and approval. No screenshots have been published as part of this review.


## First individual image review (September 6–7, 2026)

The following four originals were opened individually and reviewed for what is actually visible. They are **not** published as images in this repository.

| Original image | Visible observation | Evidence classification | Publication decision |
| --- | --- | --- | --- |
| `Screenshot 2026-09-06 220937.png` | PowerShell output reports Hyper-V VM `DC01` Time Synchronization integration service `Enabled: False`. | **Verified command output** for a single VM setting; not proof of domain time hierarchy correctness. | Candidate after review of surrounding desktop content. |
| `Screenshot 2026-09-06 223015.png` | Hyper-V Manager lists `DC01` and `CLIENT01` as Running. A host computer name is visible. | **Verified VM running-state screenshot**; does not establish guest service health or FS01 state. | **Redact host name** before publication. |
| `Screenshot 2026-09-07 042730.png` | Group Policy Management Editor shows an IT Department Drive Mapping GPO, but the selected Drive Maps view says **“There are no items to show in this view.”** | **Incomplete configuration view**; explicitly **not proof** that a mapped drive was configured or applied. | Exclude from success evidence; retain only if documenting troubleshooting or a before-state. |
| `Screenshot 2026-09-07 054021.png` | PowerShell displays global group `GG_IT_Users` and an enabled AD test user. | **Verified account/group-related output**, but not proof that the shown user belongs to the shown group or that the complete onboarding workflow ran. | Candidate only after review of test-user naming and broader context. |

**Review boundary:** These observations are based on the four actual screenshot files, not inferred from their timestamps or file names. The remaining archive images still require individual inspection before public use. Do not interpret this review as approval to upload the raw archive.
