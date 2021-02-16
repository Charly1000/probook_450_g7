
DefinitionBlock ("", "SSDT", 2, "HACK", "HPET", 0x00000000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.HPET, DeviceObj)    // (from opcode)

    If (_OSI ("Darwin"))
    {
        Name (\_SB.PCI0.LPCB.HPET._CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            IRQNoFlags ()
                {0,8,11,15}
            Memory32Fixed (ReadWrite,
                0xFED00000,         // Address Base
                0x00000400,         // Address Length
                )
        })
    }
}

