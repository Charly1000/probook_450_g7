// Adding PNLF device for IntelBacklight.kext or AppleBacklight.kext+AppleBacklightFixup.kext
// This one is specific to CFL

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "HACK", "PNLF", 0)
{
#endif
    Device (PNLF)
    {
             Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
            Name (_CID, "backlight")  // _CID: Compatible ID
            Name (_UID, 0x13)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (Zero)
                }
            }
               }
            }
