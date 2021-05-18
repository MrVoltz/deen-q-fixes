#!/system/bin/sh
[ -e /sys/module/lowmemorykiller/parameters/minfree ] || exit 0

/system/bin/chmod 444 /sys/module/lowmemorykiller/parameters/minfree
echo 0 > /sys/module/lowmemorykiller/parameters/enable_lmk
/system/bin/pkill lmkd
