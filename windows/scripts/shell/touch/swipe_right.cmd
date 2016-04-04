@echo off

set coord_x=260
set coord_y=230

adb shell sendevent /dev/input/event3 0003 0057 %coord_x%
adb shell sendevent /dev/input/event3 0003 0053 %coord_y%
adb shell sendevent /dev/input/event3 0000 0000 00000000

%wait% 1

adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0000 0000 00000000



