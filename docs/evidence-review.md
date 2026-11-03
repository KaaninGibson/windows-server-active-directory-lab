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


## Expanded candidate review (September 7–10, 2026)

The remaining **17 images from the 21-image priority shortlist** were examined in contact sheets. These are **preliminary visual classifications**, not a full-resolution privacy clearance. They are not yet approved for public image upload.

| Screenshot (2026) | What is visibly supported | Important limitation / decision |
| --- | --- | --- |
| Sep 07 20:03:15 | Corporate Device Compliance Policy overview exists in Intune | Configuration/assignment view, not endpoint compliance proof |
| Sep 07 21:13:36 | Intune policy-setting statuses include several green **Compliant** entries | A settings-status view; verify device context and any noncompliant/error row before publication |
| Sep 07 21:35:19 | BitLocker device configuration report shows **1 succeeded, 0 error, 0 conflict, 0 in progress** | Useful policy-deployment evidence, but not proof of actual disk encryption state; visible user email must be redacted |
| Sep 07 21:52:38 | Device configuration policy settings show green succeeded status icons | Inspect individual settings and device assignment at full resolution |
| Sep 08 00:22:03 | Windows LAPS policy overview and assignment information are visible | Assignment alone does not establish password backup |
| Sep 08 00:26:03 | Intune device local administrator password page displays a **last password rotation** timestamp | Strong candidate for LAPS management evidence; **do not reveal the password**; review tenant/device details |
| Sep 08 23:32:24 | Conditional Access policy details explicitly show **Report-only** and require compliant device | Never describe this as an enforced access-blocking policy |
| Sep 09 01:06:28 | Sign-in Conditional Access results include a successful MFA policy and several **Not applied** results | Shows mixed per-policy results, not blanket enforcement |
| Sep 09 01:07:41 | Report-only tab shows **Require Compliant Device: Report-only Failure** | Useful evidence of pilot evaluation, **not** evidence that access was blocked |
| Sep 09 01:50:01 | Windows Autopilot devices page shows **0 items loaded** at that point | A before-state only; exclude as deployment success evidence |
| Sep 09 01:54:21 | Windows Autopilot devices page shows **1 item loaded**, with a virtual-machine entry | Supports registration/import visibility; does not prove OOBE completion |
| Sep 09 02:01:14 | CLOUDCLIENT01 device summary displays **Compliant**, **Corporate**, and **Intune** badges | Supports endpoint management/compliance state at that time, not Autopilot provisioning completion |
| Sep 09 02:01:59 | Windows Autopilot entry shows **Profile status: Pending** | Incomplete state; not proof of successful profile application |
| Sep 09 18:40:28 | Azure Resource Manager resource-groups view says **No resource groups to display** | Before-state only; not proof of Azure infrastructure deployment |
| Sep 09 18:50:30 | Azure VM `AZR-LAB-VM01` overview exists, showing **Stopped (deallocated)** | Supports VM resource creation, not a running workload |
| Sep 10 19:27:15 | Azure recent resources list shows resource groups, VM, network resources, and storage | Resource inventory evidence; review names, subscription details, and provisioning states |
| Sep 10 19:32:36 | Another Azure recent resources list shows multiple resource types | Corroborating inventory view, not independent validation of security or connectivity |

### Evidence decisions from the expanded review

- **Best follow-up candidates for full-resolution review:** BitLocker policy success, LAPS last-rotation page, compliant Intune device, Conditional Access report-only result, Autopilot imported device, and Azure resource inventory.
- **Exclude from completion galleries:** empty Drive Maps, empty Autopilot list, pending Autopilot profile, and empty Azure resource-group view unless clearly labeled as before/troubleshooting states.
- **Do not conflate** Intune compliance with encryption proof, report-only Conditional Access with enforcement, Autopilot registration with completed OOBE, or Azure resource creation with operational validation.
- **Privacy hold:** The priority screenshot set includes visible tenant/user identity details, device identifiers, and Azure subscription context. All screenshots remain unpublished pending full-resolution redaction and reinspection.

## Eight-image private review set — November 2026

Eight cropped/redacted derivatives were prepared for private review. They are **not uploaded to this public repository**. The backup initiation screenshot received an additional full-width redaction over the volume-identifier output line. Screenshots are captioned conservatively:

| Image | What it establishes | What it does not establish |
| --- | --- | --- |
| 01 Hyper-V Running VMs | DC01 and CLIENT01 shown Running in Hyper-V | Guest health or production readiness |
| 02 Hyper-V Time Sync | Time Synchronization integration service disabled for DC01 | Correct domain time-source hierarchy |
| 03 AD Domain Forest | Domain and forest information returned by PowerShell | Overall AD security posture |
| 04 Disk Inventory | Disk style, size and online state displayed | Disk redundancy or backup success |
| 05 AD User Group | Lab group and enabled test-user output | Proven group membership or full onboarding |
| 06 Account Lockout Test | Commands and test-account lockout-related output | Complete recovery or enterprise lockout policy |
| 07 Backup Initiation | Windows Server Backup installed; system-state backup started | Completed or restorable backup |
| 08 PowerShell Script Inspection | Script filename and parser-related commands | Successful automation execution |

**Publication gate:** Before uploading any images, inspect the actual final-resolution derivatives and ensure lab test names are synthetic and no secret, personal identity, environment identifier, or volume GUID remains visible. This table is documentation of the review, **not publication approval or a claim of image upload**.
