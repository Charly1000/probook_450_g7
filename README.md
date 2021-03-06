# HP ProBook 450 G7

Running MacOS Big Sur.
So Catalina should also work

## You have three options:
 - 01 - EFI-folder to boot with as little as possible ACPI folder
 - 02 - EFI-folder to boot with a DSDT
 - 03 - EFI-folder to boot with separate SSDTs (my own choice)

### Hardware Specs:
- CPU: i7-10510U
- RAM: 32GB DDR4 Crucial
- iGPU, no dGPU
- Intel AX201 WLAN/BT
- NVME PCIe 3.0 SSD Crucial


### what work:
- CPU with power management
- GPU full acceleration
- all USB-Ports
- Trackpad/Clickpad with all gestures
- native sound-keys
- native brightness-keys (only if you boot directly in MacOS after PowerOn or Hardware-EC-Reset). Otherwise fn+w is brighter and fn+c is darker
- Battery
- Sleep
- HDMI and 4k. Also USB-C to HDMI with 4k
- Bluetooth
- WLAN
- AirPlay
- after approx. 3 hours of idle operation with 100% backlight brightness, the battery is at approx 50%.
- temperature is about 45° to 50° all over time. Very silent fan.


### dont work:
- Webcam/IR-Sensors - with SSDT-INT_USB.aml I tried to insert..
- SD-Cardreader
- internal microphone.. in Windows device-manager my microphone is not a realtek, it's a intel.
- Sidecar - I think that's a Intel-Kext problem. If you have another WiFi-Card it should work.


don't forget to change "PlatformInfo" in OC-config with your own data for MacBookPro15,4.


try and have fun.

no supoort, I no longer have this device.