/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20260408 (32-bit version)
 * Copyright (c) 2000 - 2026 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of C:/Users/Windows/Desktop/X390ºÚÆ»¹û/MACOS/EFI/OC/ACPI/SSDT-PNLF.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000056 (86)
 *     Revision         0x02
 *     Checksum         0x70
 *     OEM ID           "CORP"
 *     OEM Table ID     "PNLF"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20260408 (539362312)
 */
DefinitionBlock ("", "SSDT", 2, "CORP", "PNLF", 0x00000000)
{
    Device (PNLF)
    {
        Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
        Name (_CID, "backlight")  // _CID: Compatible ID
        Name (_UID, 0x13)  // _UID: Unique ID
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (0x0B)
        }
    }
}

