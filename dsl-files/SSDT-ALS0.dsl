// Fake ambient light sensor device

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "HACK", "_ALS0", 0)
{
#endif
        Device (ALS0)
        {
            Name (_HID, "ACPI0008")  // _HID: Hardware ID
            Name (_CID, "smc-als")  // _CID: Compatible ID
            Name (_ALI, 0x012C)  // _ALI: Ambient Light Illuminance
            Name (_ALR, Package (0x01)  // _ALR: Ambient Light Response
            {
                Package (0x02)
                {
                    0x64, 
                    0x012C
                }
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF