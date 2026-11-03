# PowerShell and Script Evidence Audit

## Scope and standard

This page checks claims against identifiable screenshots in the September 2026 lab archive. **PowerShell commands, a script file's existence, script contents, and successful execution are different kinds of evidence.** A screenshot showing a command succeeding supports that specific operation; it does not automatically establish a complete automated workflow.

## Confirmed screenshot observations

| Original screenshot | Observation | Classification |
| --- | --- | --- |
| `Screenshot 2026-09-06 223015.png` | Hyper-V Manager shows DC01 and CLIENT01 running | VM state shown; not a script |
| `Screenshot 2026-09-06 220937.png` | `Disable-VMIntegrationService` and `Get-VMIntegrationService` show DC01 Time Synchronization disabled | PowerShell configuration and read-back |
| `Screenshot 2026-09-07 054021.png` | `Get-ADGroup` displays `GG_IT_Users`; `Get-ADUser` displays an enabled test account | AD query output; not proof of automated onboarding |
| `Screenshot 2026-09-07 054438.png` | `C:\Scripts\Disable-NorthStarEmployee.ps1` is listed with **Length 0** and a PowerShell parser call appears | Empty file / script-inspection attempt; **not** a functional offboarding script |
| `Screenshot 2026-09-07 042730.png` | Group Policy Drive Maps pane reports no items in the selected view | Incomplete configuration view; not proof of mapped drives |
| `Screenshot 2026-09-07 071032.png` (as indexed in contact sheet) | Windows Server Backup feature and `wbadmin` backup initiation visible | Backup start; completion not demonstrated |
| `Screenshot 2026-09-07 071243.png` (as indexed in contact sheet) | Recovery command output includes `The path specified for recovery is invalid` | Troubleshooting/error, not successful restore |

## What the repository may safely say

- The lab involved hands-on PowerShell administration of Hyper-V and Active Directory.
- At least some commands have visible results, including Hyper-V integration-service state and AD object queries.
- Historical notes describe onboarding/offboarding and CSV reporting workflows; **the original complete script contents and a matched successful execution trace are not established by the evidence enumerated here**.
- A zero-byte `.ps1` file is not evidence of a working automation script.
- Backup initiation and recovery errors must not be described as completed restore validation.

## Evidence needed to upgrade script claims

To call an onboarding/offboarding script *verified*, identify a screenshot sequence showing (1) nonempty script source or an invocation with parameters, (2) a successful run or audit output, and (3) a resulting AD object state or group membership check. Keep source filenames and timestamps so a reviewer can independently trace the sequence.

This audit is intentionally conservative. The full archive inventory includes more images than those individually cited here; unexamined screenshots should not be silently treated as evidence for or against a claim.
