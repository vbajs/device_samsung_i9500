Device configuration for Samsung Galaxy S4 Exynos (GT-I9500)

Copyright 2015, The CyanogenMod Project / GearCM

Current build version: WIP

Actual Status:

- Hardware initialization has been properly fixed (GPS, Camera...)
- Prebuilt OMX Libraries don't work anymore. It's required to switch to source-built ones
- Audio HAL crashes while booting (seems that audio_route is the problem)
- PVR SGX544 EGL libraries cause issues on boot
- Kernel needs to be updated with some little patches to match new Android M battery stats