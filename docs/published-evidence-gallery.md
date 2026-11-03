# windows server active directory lab — Published Screenshot Gallery

These images were uploaded by the lab owner. Captions describe the observed evidence without implying production readiness or completed validation that the images do not establish. **Publication does not mean a new independent full-resolution privacy audit has been completed.** If any image contains a sensitive identifier, remove it from GitHub and its history as appropriate.

## 1. Server Manager roles

![Server Manager roles](../evidence/01_Server_Manager_Roles.png)

Server Manager interface; exact role installation and configuration require corroborating evidence.

## 2. Windows services

![Windows services](../evidence/02_Windows_Services_Status.png)

Service status at the time of capture; not a longitudinal health check.

## 3. Hyper-V running VMs

![Hyper-V running VMs](../evidence/03_HyperV_Running_VMs.png)

VM running state, not guest application health.

## 4. DNS Manager

![DNS Manager](../evidence/04_DNS_Manager.png)

DNS configuration view; resolution success requires a query result.

## 5. Group Policy result

![Group Policy result](../evidence/05_Group_Policy_Result.png)

Policy-related output; interpret only visible settings.

## 6. Hyper-V file server

![Hyper-V file server](../evidence/06_HyperV_File_Server.png)

File-server VM context; does not establish share permissions.

## 7. Group Policy refresh and mapped drive

![Group Policy refresh and mapped drive](../evidence/08_GPUpdate_And_Drive.png)

PowerShell shows policy refresh and mapped T: drive to \\FS01\IT.

## 8. Active Directory domain and forest

![Active Directory domain and forest](../evidence/Extra_03_AD_Domain_Forest.png)

PowerShell domain/forest query output.

## 9. Active Directory user and group

![Active Directory user and group](../evidence/Extra_05_AD_User_Group.png)

Group and user queries; not a complete automation execution.

## Evidence boundaries

Screenshots of configurations, inventories, report-only evaluations, pending states, or command attempts must not be described as end-to-end successful deployments. Original unredacted archives are not intended for public release.
