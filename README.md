# Windows Server 2022 | Active Directory Home Lab

## Project Overview

This is a hands-on Windows Server 2022 lab built using Hyper-V to practice Active Directory administration, DNS, Group Policy, and Windows infrastructure troubleshooting.

The lab simulates a small corporate environment for developing practical systems administration skills.

## Lab Environment

| Component | Configuration |
|---|---|
| Hypervisor | Microsoft Hyper-V |
| Operating System | Windows Server 2022 |
| Domain Controller | DC01 |
| Active Directory Domain | corp.northstarlab.test |
| Domain Controller IP | 10.50.10.10/24 |
| DNS Forwarders | 1.1.1.1 and 8.8.8.8 |
| Organizational Units | IT, HR, Finance, Operations |

## Configuration

### Active Directory
- Configured a Windows Server 2022 domain controller.
- Created departmental organizational units.
- Established a simulated corporate domain.

### DNS
- Assigned static IP addressing to the domain controller.
- Configured external DNS forwarders.

### Group Policy
- Created a workstation baseline Group Policy Object.

### Virtualization
- Hosted the Windows Server environment using Hyper-V.

## Technologies

Windows Server 2022, Hyper-V, Active Directory, DNS, Group Policy, PowerShell

## Planned Improvements

- Add a network architecture diagram.
- Document and test workstation Group Policy settings.
- Add PowerShell administration scripts.
- Include sanitized screenshots and troubleshooting notes.

## Security

This project uses a simulated environment and does not contain employer or customer information.
