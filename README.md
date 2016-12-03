Device configuration for Samsung Galaxy S4 Exynos (GT-I9500)

Copyright 2016, The CyanogenMod Project / GearCM

Current build version: 20161203 Stable

Actual Status:

- Audio HAL isn't working correctly, causing VOIP issues, HDMI audio instabilities and mixer paths conflicts
- STK Toolkit isn't working yet, SMSs aren't properly sent (RIL issue)
- SELinux policies are almost complete, with just 2 missing rules
- Wireless Display (or Miracast if you like) stream is corrupted, buffer issues
- Adoptable Storage isn't stable, crashes while encrypting the external storage (Kernel Panic). 
  Even if it crashes though, the device may reboot correctly and it will work just like the crash never happened,
  or it may bootloop unless you remove the MicroSD (scatterwalk crypto crash)
