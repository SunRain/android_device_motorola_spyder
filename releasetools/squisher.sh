# This script is included in squisher
# It is the final build step (after OTA package)

# Delete unwanted apps
rm -f $REPACK/ota/system/app/RomManager.apk
#mv -f $REPACK/ota/system/vendor/lib/hw/hwcomposer.omap4.so $REPACK/ota/system/vendor/lib/hw/hwcomposer.omap4.so.bak
#rm -f $REPACK/ota/system/app/FM.apk
#rm -f $REPACK/ota/system/xbin/irssi

# these scripts are not required
#rm $REPACK/ota/system/etc/init.d/03firstboot
#rm $REPACK/ota/system/etc/init.d/04modules

mkdir -p $REPACK/ota/system/etc/terminfo/x
#mkdir -p $REPACK/ota/system/etc/terminfo/x/xterm
cp $REPACK/ota/system/etc/terminfo/l/linux $REPACK/ota/system/etc/terminfo/x/xterm

# prebuilt boot, devtree, logo & updater-script
cp -f $ANDROID_BUILD_TOP/device/motorola/spyder/updater-script $REPACK/ota/META-INF/com/google/android/updater-script
#if [ -n "$CYANOGEN_RELEASE" ]; then
#  cat $ANDROID_BUILD_TOP/device/motorola/spyder/updater-script-rel >> $REPACK/ota/META-INF/com/google/android/updater-script
#fi

#cp -f $ANDROID_BUILD_TOP/out/target/product/spyder/root/init $REPACK/ota/system/bootmenu/2nd-init/init
rm -f $REPACK/ota/system/app/Superuser.apk
cp -f $ANDROID_BUILD_TOP/device/motorola/edison/prebuilt/app/SuperSU.apk $REPACK/ota/system/app
rm -f $REPACK/ota/system/xbin/su
cp -f $ANDROID_BUILD_TOP/device/motorola/edison/prebuilt/bin/su $REPACK/ota/system/xbin
