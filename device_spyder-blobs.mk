-include device/motorola/spyder/BuildToggle.mk

ifeq ($(PRODUCT_TARGET_UMTS_SPYDER),true)
target_device := umts
else
target_device := cdma
endif

# Audio - use stock ICS leak files for now
PRODUCT_COPY_FILES += \
    device/motorola/spyder/audio/alsa.omap4.so:/system/lib/hw/alsa.omap4.so \
    device/motorola/spyder/audio/audio.primary.omap4.so:/system/lib/hw/audio.primary.omap4.so \
    device/motorola/spyder/audio/audio_policy.omap4.so:/system/lib/hw/audio_policy.omap4.so \
    device/motorola/spyder/audio/libasound.so:/system/lib/libasound.so \
    device/motorola/spyder/audio/libaudio_ext.so:/system/lib/libaudio_ext.so \
    
    # Permissions files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:/system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:/system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:/system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:/system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:/system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:/system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:/system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:/system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:/system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:/system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml 

# Prebuilts
PRODUCT_COPY_FILES += \
    device/motorola/spyder/prebuilt/bin/battd:system/bin/battd \
    device/motorola/spyder/prebuilt/bin/finalize_release:system/bin/finalize_release \
    device/motorola/spyder/prebuilt/bin/mount_ext3.sh:system/bin/mount_ext3.sh \
    device/motorola/spyder/prebuilt/bin/strace:system/bin/strace \
    device/motorola/spyder/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/motorola/spyder/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/motorola/spyder/prebuilt/bin/uim-sysfs:system/bin/uim-sysfs \
    device/motorola/spyder/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/motorola/spyder/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/motorola/spyder/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/motorola/spyder/prebuilt/etc/TICameraCameraProperties.xml:system/etc/TICameraCameraProperties.xml \
   
# Prebuilts
#PRODUCT_COPY_FILES += \
#    device/motorola/spyder/prebuilt/${target_device}/etc/hijack-boot.zip:system/etc/hijack-boot.zip \
#    device/motorola/spyder/prebuilt/${target_device}/usr/idc/evfwd.idc:system/usr/idc/evfwd.idc \
#    device/motorola/spyder/prebuilt/${target_device}/usr/idc/Motorola_Mobility_Motorola_HD_Dock.idc:system/usr/idc/Motorola_Mobility_Motorola_HD_Dock.idc \
#    device/motorola/spyder/prebuilt/${target_device}/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
#    device/motorola/spyder/prebuilt/${target_device}/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc    
   #device/motorola/spyder/prebuilt/${target_device}/bin/hijack:system/bin/hijack \
   #device/motorola/spyder/prebuilt/${target_device}/bin/hijack.log_dump:system/bin/hijack.log_dump \



# Phone settings
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml
    #device/sample/etc/apns-conf_verizon.xml:system/etc/apns-conf.xml \

ifeq ($(PRODUCT_TARGET_UMTS_SPYDER),true)    
PRODUCT_COPY_FILES += \
    device/motorola/spyder/prebuilt/lib/libwtnativetask.so:system/lib/libwtnativetask.so
endif
    

PRODUCT_COPY_FILES += \
    device/motorola/spyder/prebuilt/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin:/system/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin.bin \
    device/motorola/spyder/prebuilt/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin:/system/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin \
    device/motorola/spyder/prebuilt/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin:/system/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin \
    device/motorola/spyder/prebuilt/etc/firmware/ti-connectivity/wl128x-fw-4-mr.bin:/system/etc/firmware/ti-connectivity/wl128x-fw-4-mr.bin \
    device/motorola/spyder/prebuilt/etc/firmware/ti-connectivity/wl128x-fw-4-plt.bin:/system/etc/firmware/ti-connectivity/wl128x-fw-4-plt.bin \
    device/motorola/spyder/prebuilt/etc/firmware/ti-connectivity/wl128x-fw-4-sr.bin:/system/etc/firmware/ti-connectivity/wl128x-fw-4-sr.bin \
    device/motorola/spyder/prebuilt/etc/firmware/ti-connectivity/wl1271-nvs.bin:/system/etc/firmware/ti-connectivity/wl1271-nvs.bin \
    device/motorola/spyder/prebuilt/etc/firmware/ti-connectivity/wl1271-nvs_127x.bin:/system/etc/firmware/ti-connectivity/wl1271-nvs_127x.bin
    
    
# Backup Tool
PRODUCT_COPY_FILES += \
    device/motorola/spyder/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    device/motorola/spyder/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    device/motorola/spyder/prebuilt/bin/50-backup.sh:system/addon.d/50-backup.sh

# prebuilt hwc
#PRODUCT_COPY_FILES += \
#    device/motorola/spyder/hwc/hwcomposer.spyder.so:system/vendor/lib/hw/hwcomposer.spyder.so \
#    device/motorola/spyder/hwc/libedid.so:system/lib/libedid.so    

# Temporarily use prebuilt DOMX
# Prebuilts /system/lib
#PRODUCT_COPY_FILES += \
#    device/motorola/spyder/prebuilt/${target_device}/lib/libdomx.so:/system/lib/libdomx.so \
#    device/motorola/spyder/prebuilt/${target_device}/lib/libmm_osal.so:/system/lib/libmm_osal.so \
#    device/motorola/spyder/prebuilt/${target_device}/lib/libOMX.TI.DUCATI1.MISC.SAMPLE.so:/system/lib/libOMX.TI.DUCATI1.MISC.SAMPLE.so \
#    device/motorola/spyder/prebuilt/${target_device}/lib/libOMX.TI.DUCATI1.VIDEO.CAMERA.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.CAMERA.so \
#    device/motorola/spyder/prebuilt/${target_device}/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.secure.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.secure.so \
#    device/motorola/spyder/prebuilt/${target_device}/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.so \
#    device/motorola/spyder/prebuilt/${target_device}/lib/libOMX.TI.DUCATI1.VIDEO.H264E.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.H264E.so \
#    device/motorola/spyder/prebuilt/${target_device}/lib/libOMX.TI.DUCATI1.VIDEO.MPEG4E.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.MPEG4E.so \
#    device/motorola/spyder/prebuilt/${target_device}/lib/libOMX_Core.so:/system/lib/libOMX_Core.so \
