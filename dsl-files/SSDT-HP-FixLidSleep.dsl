
DefinitionBlock ("", "SSDT", 2, "HACK", "LIDSLEEP", 0x00000000)
{
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)    // (from opcode)

    Scope (\_SB.PCI0.LPCB.PS2K)
    {
        If (_OSI ("Darwin"))
        {
            Name (RMCF, Package (0x04)
            {
                "Keyboard", 
                Package (0x06)
                {
                    "Custom PS2 Map", 
                    Package (0x02)
                    {
                        Package (0x00){}, 
                        "e005=0"
                    }
                }
            })
        }
    }
}

