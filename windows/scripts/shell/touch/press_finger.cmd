@echo off

adb shell sendevent /dev/input/event3 0003 0057 00000260
adb shell sendevent /dev/input/event3 0003 0053 00000230
adb shell sendevent /dev/input/event3 0000 0000 00000000



