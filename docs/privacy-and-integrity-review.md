# Published screenshot privacy and integrity review

**Scope:** 9 curated PNG screenshots currently linked in the [published gallery](published-evidence-gallery.md), located in `evidence/`.

## Verification performed

- Inspected the curated PNGs visually, including enlarged inspection of higher-risk cloud configuration and compliance screenshots.
- Examined PNG image metadata: the reviewed files contained no additional PNG metadata fields.
- Compared each current GitHub file's Git blob SHA-1 to its locally inspected PNG. **All 9/9 matched byte-for-byte**. This confirms that the files inspected were the same bytes as the files published in this review.
- Checked visible content for passwords, recovery keys, API tokens, personal email addresses, full tenant/subscription IDs, public IP values, and other identifying data. No obvious secrets were identified in these 9 screenshots. This is a content review, not a guarantee against every possible contextual or hidden disclosure.

## Findings

No obvious passwords, access tokens, recovery keys, personal email addresses, or tenant/subscription GUIDs were observed. Server Manager shows a red status indicator; it is not a clean health validation.

## Important repository-history limitation

One Microsoft Entra screenshot previously exposed Azure/Entra directory object IDs and was removed from the **current branch**. The image may remain accessible in earlier Git commits, forks, or caches. The connected GitHub tools can delete a file from the current branch but **cannot purge historical Git objects or GitHub caches**. The remaining risk is identifier exposure, **not a confirmed credential leak**. A history rewrite with a tool such as `git filter-repo`, a force-push, and possibly GitHub Support cache cleanup would be required for complete removal. Do not describe this as fully purged.

## Conclusion

The 9 current images were verified against their published GitHub blob hashes and reviewed for obvious sensitive material. No additional screenshot removal is warranted from the reviewed set on the evidence available. Historical-image purge is **not complete**.
