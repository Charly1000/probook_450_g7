# HP ProBook 450 G7

Running MacOS Big Sur.
So Catalina should also work.

OC-Folder for HP ProBook 450 G7

- CPU: i7-10510U
- RAM: 32GB DDR4 Crucial
- iGPU, no dGPU
- AX201 WLAN/BT
- NVME PCIe 3.0 SSD Crucial


what work:
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


dont work:
- Webcam/IR-Sensors - with SSDT-INT_USB.aml I tried to insert..
- SD-Cardreader
- internal microphone.. in Windows device-manager my microphone is not a realtek, it's a intel.
- sidecar - I think that's a Intel-Kext problem. If you have another WiFi-Card it should work.


don't forget to change "PlatformInfo" in OC-config with your own data.


try and have fun.



if there is someone who can help me solve the current problems, I am extremely glad
You can contact me:
https://www.hackintosh-forum.de/forum/thread/51816-hp-probook-450-g7-bitte-um-konfig-unterstützung/