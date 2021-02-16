
DefinitionBlock ("", "SSDT", 2, "HACK", "SBUSMCHC", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SBUS, DeviceObj)    // (from opcode)

            Device (_SB.PCI0.MCHC)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }

    Device (_SB.PCI0.SBUS.BUS0)
    {
                Name (_CID, "smbus")  // _CID: Compatible ID
                Name (_ADR, Zero)  // _ADR: Address
                Device (BLC0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_CID, "smbus-blc")  // _CID: Compatible ID
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        If (LEqual (Arg2, Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                           
                            })
                        }

                        Return (Package (0x0E)
                        {
                            "refnum", 
                            Zero, 
                            "address", 
                            0x57, 
                            "version", 
                            0x02, 
                            "fault-off", 
                            0x03, 
                            "fault-len", 
                            0x04, 
                            "skey", 
                            0x4C445342, 
                            "smask", 
                            0xFF
                        })
                    }

                    Name (_GPE, 0x29)  // _GPE: General Purpose Events
                }
            }

            Device (_SB.PCI0.SBUS.BUS1)
            {
                Name (_CID, "smbus")  // _CID: Compatible ID
                Name (_ADR, One)  // _ADR: Address
            }

    Method (DTGP, 5, NotSerialized)
    {
        If (LEqual (Arg0, ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b")))
        {
            If (LEqual (Arg1, One))
            {
                If (LEqual (Arg2, Zero))
                {
                    Store (Buffer (One)
                        {
                             0x03                                           
                        }, Arg4)
                    Return (One)
                }

                If (LEqual (Arg2, One))
                {
                    Return (One)
                }
            }
        }

        Store (Buffer (One)
            {
                 0x00                                           
            }, Arg4)
        Return (Zero)
    }
}

