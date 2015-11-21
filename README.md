Device configuration for Samsung Galaxy S4 Exynos (GT-I9500)

Copyright 2015, The CyanogenMod Project / GearCM

Current build version: WIP

Actual Status:

- Hardware initialization has been properly fixed (GPS, Camera...)
- Audio HAL crashes while booting (seems that audio_route is the problem)
- Kernel needs to be updated with some little patches to match new Android M battery stats
- There are some issues with fence sync, s3c-fb fails due to timeout. V LOG V

============================================================================================================

DMESG:

[   73.958176] B2   2605 fence timeout on [e41a6a80] after 3000ms
[   73.958230] B2   2605 objs:
[   73.958235] B2   2605 --------------
[   73.958241] B2   2605 s3c-fb sw_sync: 1861
[   73.958245] B2   2605   pt signaled@70.920328: 1860
[   73.958249] B2   2605   pt signaled@70.970246: 1861
[   73.958255] B2   2605   pt active: 1862
[   73.958258] B2   2605   pt active: 1862
[   73.958262] B2   2605 
[   73.958265] B2   2605 fences:
[   73.958270] B2   2605 --------------
[   73.958274] B2   2605 [e4ac7100] display: signaled
[   73.958278] B2   2605   s3c-fb_pt signaled@70.920328: 1860 / 1861
[   73.958282] B2   2605 
[   73.958285] B2   2605 [e4ac7f00] display: signaled
[   73.958300] B2   2605   s3c-fb_pt signaled@70.970246: 1861 / 1861
[   73.958305] B2   2605 
[   73.958309] B2   2605 [e41a6a00] display: active
[   73.958313] B2   2605   s3c-fb_pt active: 1862 / 1861
[   73.958318] B2   2605 
[   73.958321] B2   2605 [e41a6a80] FramebufferSurface:1: active
[   73.958326] B2   2605   s3c-fb_pt active: 1862 / 1861


LOGCAT: 

E Fence   : dequeueBuffer_DEPRECATED: fence 37 didn't signal in 3000 ms

============================================================================================================

