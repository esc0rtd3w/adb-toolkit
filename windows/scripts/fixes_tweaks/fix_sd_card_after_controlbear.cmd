@echo off


::adb shell busybox dd if=/data/local/tmp/sdcard.img of=/dev/block/mmcblk1 conv=notrunc


%adb% shell busybox dd if=/data/local/tmp/sdcard.img of=/dev/block/mmcblk1 conv=notrunc

