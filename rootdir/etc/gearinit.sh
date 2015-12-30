#!/system/xbin/busybox sh

if [ ! -f "/system/etc/gearcm" ]
then
   echo "Wrong ROM, reboot...";
   reboot recovery;
else
   echo "This is GearCM, continue...";
fi

# Mount / as RW
#mount -t rootfs -o remount,rw rootfs

# Initialize Synapse
#chown -R root.root /res/synapse
#chmod -R 777 /res/synapse
#ln -s /res/synapse/uci /sbin/uci
#/sbin/uci

# Initialize Wolfson Sound Control
echo "0x0FA4 0x0404 0x0170 0x1DB9 0xF233 0x040B 0x08B6 0x1977 0xF45E 0x040A 0x114C 0x0B43 0xF7FA 0x040A 0x1F97 0xF41A 0x0400 0x1068" > /sys/class/misc/wolfson_control/eq_sp_freqs
echo -5 > /sys/class/misc/wolfson_control/eq_sp_gain_1
echo 1 > /sys/class/misc/wolfson_control/eq_sp_gain_2
echo 0 > /sys/class/misc/wolfson_control/eq_sp_gain_3
echo 4 > /sys/class/misc/wolfson_control/eq_sp_gain_4
echo 3 > /sys/class/misc/wolfson_control/eq_sp_gain_5

echo 1 > /sys/class/misc/wolfson_control/switch_eq_speaker

# PVR GPU Tweaks
echo 0 > /sys/module/pvrsrvkm/parameters/gPVRDebugLevel

# Mount /system as RW
#mount -w -o remount /system

exit 0
