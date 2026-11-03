# Validation and Troubleshooting — Windows Server Lab

## Domain controller health

The historical lab validation recorded DNS passing, NTDS/DNS/DFSR/DHCPServer services running, no reported replication failures, SYSVOL and NETLOGON shares available, and DFSR state 4. Historical DFSR event warnings during initial setup were distinguished from an active SYSVOL failure.

### Read-only checks to rerun when lab is available

```powershell
# Requires appropriate privileges and Windows Server administration tools.
Get-Service NTDS,DNS,DFSR,DHCPServer | Select-Object Name,Status,StartType
Get-SmbShare -Name SYSVOL,NETLOGON -ErrorAction SilentlyContinue
dcdiag /test:dns
repadmin /replsummary
```

These commands are **suggested checks**, not a recovered original execution transcript. In a single-DC environment, replication output has different meaning than in a multi-DC topology.

## Group Policy and mapped drives

A screenshot of an empty Drive Maps view is **not** proof of drive mapping. Validate the GPO link and security filtering, then check applied policy on CLIENT01 using `gpresult /r` and the actual mapped drives. Test authorized and denied share access using separate nonprivileged departmental test accounts.

## Backup and recovery

Recorded exercises include Windows Server Backup, AD Recycle Bin recovery, and an alternate-location AD installation-media restore test. **A full domain-controller disaster recovery was not demonstrated.**

## Evidence standards

Each troubleshooting example should record the symptom, affected scope, diagnostic output, change, validation, and rollback/remaining risk. Remove internal credentials and personal data before publication.
