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
