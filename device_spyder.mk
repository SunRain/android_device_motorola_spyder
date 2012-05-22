#
# This is the product configuration for a full spyder
#

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects

# Device overlay
    DEVICE_PACKAGE_OVERLAYS += device/motorola/spyder/overlay

# high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_PACKAGES := \
    charger \
    charger_res_images

# Audio - use stock ICS leak files for now
PRODUCT_COPY_FILES += \
    device/motorola/spyder/audio/alsa.omap4.so:/system/lib/hw/alsa.omap4.so \
    device/motorola/spyder/audio/audio.a2dp.default.so:/system/lib/hw/audio.a2dp.default.so \
    device/motorola/spyder/audio/audio.primary.omap4.so:/system/lib/hw/audio.primary.omap4.so \
    device/motorola/spyder/audio/audio_policy.omap4.so:/system/lib/hw/audio_policy.omap4.so \
    device/motorola/spyder/audio/libasound.so:/system/lib/libasound.so \
    device/motorola/spyder/audio/libaudio_ext.so:/system/lib/libaudio_ext.so

PRODUCT_PACKAGES += \
    camera.omap4 \
    libinvensense_mpl \
    hwcomposer.omap4 \
    hwcomposer.default \

PRODUCT_PACKAGES += \
    libaudioutils \
    libaudiohw_legacy \

# BlueZ test tools
PRODUCT_PACKAGES += \
    hciconfig \
    hcitool

# Modem
PRODUCT_PACKAGES += \
    nc \
    Stk \
    libaudiomodemgeneric \
    libreference-cdma-sms \
    rild \
    radiooptions \
    sh 

# Wifi
#    wlan_loader \
#    wlan_cu \
#    tiwlan.ini
PRODUCT_PACKAGES += \
    lib_driver_cmd_wl12xx \
    dhcpcd.conf \
    hostapd.conf \
    wifical.sh \
    wpa_supplicant.conf \
    TQS_D_1.7.ini \
    crda \
    regulatory.bin \
    calibrator

# HotSpot
#PRODUCT_PACKAGES += \
#    tiap_loader \
#    tiap_cu \
#    hostap \
#    hostapd.conf 

# Bluetooth
PRODUCT_PACKAGES += \
    bt_sco_app \
    uim-sysfs 

# Release utilities
PRODUCT_PACKAGES += \
    spyder_releaseutils-check_kernel \
    spyder_releaseutils-finalize_release \
    spyder_releaseutils-mke2fs \
    spyder_releaseutils-tune2fs

PRODUCT_PACKAGES += \
    Camera \
    camera_test \
    Superuser \
    su \
    DockAudio \


PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory \
    FileManager \
    MusicFX \

# WirelessTether
PRODUCT_COPY_FILES += \
    device/motorola/spyder/prebuilt/app/wifi_tether_v3_1-beta14.apk:system/app/wifi_tether_v3_1-beta14.apk \
    device/motorola/spyder/prebuilt/lib/libwtnativetask.so:system/lib/libwtnativetask.so \
    

# Rootfs files
PRODUCT_COPY_FILES += \
    out/target/product/spyder/root/init:system/etc/rootfs/init \
    out/target/product/spyder/root/sbin/adbd:system/etc/rootfs/sbin/adbd \
    device/motorola/spyder/root/default.prop:system/etc/rootfs/default.prop \
    device/motorola/spyder/root/init.rc:system/etc/rootfs/init.rc \
    device/motorola/spyder/root/init.mapphone_cdma.rc:system/etc/rootfs/init.mapphone_cdma.rc \
    device/motorola/spyder/root/init.mapphone_umts.rc:system/etc/rootfs/init.mapphone_umts.rc \
    device/motorola/spyder/root/usbcheck.sh:system/etc/rootfs/usbcheck.sh \
    device/motorola/spyder/root/ueventd.rc:system/etc/rootfs/ueventd.rc \
    device/motorola/spyder/root/ueventd.mapphone_cdma.rc:system/etc/rootfs/ueventd.mapphone_cdma.rc \
    device/motorola/spyder/root/ueventd.mapphone_umts.rc:system/etc/rootfs/ueventd.mapphone_umts.rc \

# Hijack files
PRODUCT_COPY_FILES += \
    device/motorola/spyder/root/default.prop:root/default.prop \
    device/motorola/spyder/root/init.rc:root/init.rc \
    device/motorola/spyder/root-hijack/init.mapphone_cdma.rc:root/init.mapphone_cdma.rc \
    device/motorola/spyder/root-hijack/init.mapphone_umts.rc:root/init.mapphone_umts.rc \
    device/motorola/spyder/root/usbcheck.sh:root/usbcheck.sh \
    device/motorola/spyder/root/ueventd.rc:root/ueventd.rc \
    device/motorola/spyder/root/ueventd.mapphone_cdma.rc:root/ueventd.mapphone_cdma.rc \
    device/motorola/spyder/root/ueventd.mapphone_umts.rc:root/ueventd.mapphone_umts.rc \


# Permissions files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:/system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:/system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:/system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:/system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:/system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:/system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:/system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:/system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:/system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:/system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \


#    vendor/motorola/spyder/proprietary/etc/permissions/platform.xml:system/etc/permissions/platform.xml \
# Prebuilts
PRODUCT_COPY_FILES += \
    device/motorola/spyder/prebuilt/bin/battd:system/bin/battd \
    device/motorola/spyder/prebuilt/bin/hijack:system/bin/hijack \
    device/motorola/spyder/prebuilt/bin/hijack.log_dump:system/bin/hijack.log_dump \
    device/motorola/spyder/prebuilt/bin/mount_ext3.sh:system/bin/mount_ext3.sh \
    device/motorola/spyder/prebuilt/bin/strace:system/bin/strace \
    device/motorola/spyder/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/motorola/spyder/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/motorola/spyder/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/motorola/spyder/prebuilt/etc/hijack-boot.zip:system/etc/hijack-boot.zip \
    device/motorola/spyder/prebuilt/usr/idc/evfwd.idc:system/usr/idc/evfwd.idc \
    device/motorola/spyder/prebuilt/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/motorola/spyder/prebuilt/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/motorola/spyder/prebuilt/usr/keychars/evfwd.kcm:system/usr/keychars/evfwd.kcm \
    device/motorola/spyder/prebuilt/usr/keychars/omap4-keypad.kcm:system/usr/keychars/omap4-keypad.kcm \
    device/motorola/spyder/prebuilt/usr/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    device/motorola/spyder/prebuilt/usr/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
    device/motorola/spyder/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/motorola/spyder/prebuilt/usr/keylayout/cpcap-key.kl:system/usr/keylayout/cpcap-key.kl \
    device/motorola/spyder/prebuilt/usr/keylayout/cy8c201xx.kl:system/usr/keylayout/cy8c201xx.kl \
    device/motorola/spyder/prebuilt/usr/keylayout/evfwd.kl:system/usr/keylayout/evfwd.kl \
    device/motorola/spyder/prebuilt/usr/keylayout/omap4-keypad.kl:system/usr/keylayout/omap4-keypad.kl \
    device/motorola/spyder/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    
#    device/motorola/spyder/prebuilt/usr/keylayout/atmxt-i2c.kl:system/usr/keylayout/atmxt-i2c.kl \
#    device/motorola/spyder/prebuilt/usr/keylayout/light-prox.kl:system/usr/keylayout/light-prox.kl \
#    device/motorola/spyder/prebuilt/usr/keylayout/mapphone-switch.kl:system/usr/keylayout/mapphone-switch.kl \
#    device/motorola/spyder/prebuilt/usr/idc/cpcap-key.idc:system/usr/idc/cpcap-key.idc \
#    device/motorola/spyder/prebuilt/usr/idc/cy8c201xx.idc:system/usr/idc/cy8c201xx.idc \
#    device/motorola/spyder/prebuilt/usr/idc/light-prox.idc:system/usr/idc/light-prox.idc \
#    device/motorola/spyder/prebuilt/usr/idc/mapphone-switch.idc:system/usr/idc/mapphone-switch.idc \
#    device/motorola/spyder/prebuilt/usr/idc/omap4-keypad.idc:system/usr/idc/omap4-keypad.idc \
#    device/motorola/spyder/prebuilt/usr/idc/atmxt-i2c.idc:system/usr/idc/atmxt-i2c.idc \
#    device/motorola/spyder/prebuilt/usr/keychars/cpcap-key.kcm:system/usr/keychars/cpcap-key.kcm \
#    device/motorola/spyder/prebuilt/usr/keychars/cy8c201xx.kcm:system/usr/keychars/cy8c201xx.kcm \
#    device/motorola/spyder/prebuilt/usr/keychars/light-prox.kcm:system/usr/keychars/light-prox.kcm \
#    device/motorola/spyder/prebuilt/usr/keychars/mapphone-switch.kcm:system/usr/keychars/mapphone-switch.kcm \
#    device/motorola/spyder/prebuilt/usr/keychars/atmxt-i2c.kcm:system/usr/keychars/atmxt-i2c.kcm \

# Phone settings
PRODUCT_COPY_FILES += \
    device/sample/etc/apns-conf_verizon.xml:system/etc/apns-conf.xml \
    vendor/cm/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml \

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# still need to set english for audio init
PRODUCT_LOCALES += en_US


# copy all kernel modules under the "modules" directory to system/lib/modules
PRODUCT_COPY_FILES += $(shell \
    find device/motorola/spyder/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/motorola/spyder/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# stuff specific to ti OMAP4 hardware
$(call inherit-product, hardware/ti/omap4xxx/omap4.mk)
$(call inherit-product, hardware/ti/wpan/ti-wpan-products.mk)
$(call inherit-product-if-exists, vendor/verizon/spyder-leak-verizon-vendor.mk)

$(call inherit-product-if-exists, vendor/motorola/spyder/spyder-vendor.mk)


# stuff common to all Motorola phones -- disabled for Sandbox
#$(call inherit-product, device/motorola/common/common_hijack.mk)

$(call inherit-product, build/target/product/full_base_telephony.mk)

PRODUCT_NAME := full_spyder
PRODUCT_DEVICE := spyder
