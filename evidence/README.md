# Reviewed Hyper-V Evidence

Two sanitized image derivatives have been prepared for publication but are **not yet uploaded to this public repository**.

| Prepared image | Verified observation | Limitation |
| --- | --- | --- |
| `hyperv-running-vms-sanitized.png` | Hyper-V Manager displays DC01 and CLIENT01 as **Running** | Does not establish guest service health, connectivity, or FS01 state |
| `hyperv-timesync-disabled.png` | PowerShell reports DC01's Hyper-V Time Synchronization integration service **Enabled: False** | Does not establish correct domain NTP hierarchy |

The prepared images and captions are included in the local portfolio handoff bundle. Only upload the sanitized derivatives after final visual approval. **Never upload the raw lab archives.**

See [the evidence review](../docs/evidence-review.md) for the 21-image classification and additional privacy checks.
