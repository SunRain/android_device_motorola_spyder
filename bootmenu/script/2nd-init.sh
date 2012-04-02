#!/system/bootmenu/binary/busybox ash

######## BootMenu Script
######## Execute [2nd-init] Menu


export PATH=/sbin:/system/xbin:/system/bin

######## Main Script

mount -o remount,rw /
#rm -f /init.mapphone_cdma.rc
#rm -f /init.rc
#rm -f /ueventd.rc


#/sbin/bootmenu hijack_2ndinit
#exit 0

cp -r -f /system/bootmenu/2nd-init/* /
chmod 755 /*.rc

cp /system/bootmenu/binary/2nd-init /sbin/2nd-init
chmod 755 /sbin/2nd-init
chown 0:2000 /sbin/2nd-init
#chown 0:2000 /init
rm -f /sbin/ueventd
ln -s /init /sbin/ueventd

killall ueventd

ADBD_RUNNING=`ps | grep adbd | grep -v grep`
if [ -z "$ADB_RUNNING" ]; then
    rm -f /sbin/adbd.root
    rm -f /tmp/usbd_current_state
    #delete if is a symlink
    [ -L "/tmp" ] && rm -f /tmp
    mkdir -p /tmp
 else
    # well, not beautiful but do the work
    # to keep current usbd state
     if [ -L "/tmp" ]; then
         mv /tmp/usbd_current_state / 2>/dev/null
         rm -f /tmp
         mkdir -p /tmp
         mv /usbd_current_state /tmp/ 2>/dev/null
     fi
 fi


## unmount devices
sync
umount -l /acct
umount -l /mnt/asec
umount -l /dev/cpuctl
umount -l /dev/pts
umount -l /mnt/obb
umount -l /cache
umount -l /data
umount -l /preinstall
umount -l /pds
# as we use /sbin/bootmenu as busybox functions, we don't need system mount
#umount -l /system

######## Cleanup

rm -f /sbin/lsof

## busybox cleanup..
for cmd in $(/sbin/busybox --list); do
  [ -L "/sbin/$cmd" ] && rm "/sbin/$cmd"
done

rm /sbin/busybox

## used for adbd shell (can be bash also)
#/system/xbin/ln -s /system/xbin/busybox /sbin/sh

## reduce lcd backlight to save battery
#echo 18 > /sys/class/leds/lcd-backlight/brightness


######## Let's go
#echo ===================
#echo ===================
#echo `ls -l /sbin | grep init`

/sbin/2nd-init
#/sbin/bootmenu busybox sh /sbin/2nd-init
#/system/bootmenu/binary/2nd-init

