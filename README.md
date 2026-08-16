# ThinkPad X390 OpenCore EFI

OpenCore EFI configuration for the Lenovo ThinkPad X390.

## Important: generate your own SMBIOS

The EFI published in this repository has been sanitized. The following values in
`EFI/OC/config.plist` are placeholders and must be replaced before use:

- `PlatformInfo -> Generic -> SystemSerialNumber`
- `PlatformInfo -> Generic -> MLB`
- `PlatformInfo -> Generic -> SystemUUID`
- `PlatformInfo -> Generic -> ROM`

Generate a unique `MacBookPro15,2` SMBIOS with GenSMBIOS or another trusted tool.
Never reuse another machine's identifiers or publish your own identifiers in a
public repository.

After replacing these values, validate `config.plist` with the `ocvalidate`
utility matching the included OpenCore version before booting.

## Repository contents

Only the bootable `EFI` directory is included. Research files, reference EFI
repositories, helper tools, and machine-specific identifiers are intentionally
excluded.
