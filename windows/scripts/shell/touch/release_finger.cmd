@echo off

adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0000 0000 00000000



