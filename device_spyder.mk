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
    frameworks/base/data/etc/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \


# Hardware HALs
#PRODUCT_PACKAGES += \
#    lights.spyder \
#    sensors.spyder \


#PRODUCT_PACKAGES += \
	#camera.spyder
    #camera.omap4

# Sound  + # BlueZ a2dp Audio HAL module
PRODUCT_PACKAGES += \
	hcitool hciattach hcidump hciconfig \
	libaudioutils audio.a2dp.default audio_policy.spyder  \
	libaudiohw_legacy audio.primary.spyder 
 #libaudiohw_legacy \
#libaudiopolicy_legacy2 \

# Modem
PRODUCT_PACKAGES += \
    nc \
    Stk \
    libaudiomodemgeneric \
    libreference-cdma-sms \
    rild \
    radiooptions \
    sh 

# Wifi packages
PRODUCT_PACKAGES += iwmulticall hostap wlan_loader wlan_cu wpa_supplicant
PRODUCT_PACKAGES += libhostapdcli libCustomWifi libwpa_client libtiOsLib
PRODUCT_PACKAGES += tiwlan.ini dhcpcd.conf wpa_supplicant.conf hostapd.conf
PRODUCT_PACKAGES += tiap_loader tiap_cu ndc


# OMX stuff
PRODUCT_PACKAGES += dspexec libbridge libLCML libOMX_Core
PRODUCT_PACKAGES += libOMX.TI.AAC.encode libOMX.TI.AAC.decode libOMX.TI.AMR.decode
PRODUCT_PACKAGES += libOMX.TI.WBAMR.encode libOMX.TI.MP3.decode libOMX.TI.WBAMR.decode
PRODUCT_PACKAGES += libOMX.TI.WMA.decode libOMX.TI.Video.Decoder libOMX.TI.Video.encoder
#PRODUCT_PACKAGES += libOMX.TI.VPP
#PRODUCT_PACKAGES += libskiahw libOMX.TI.JPEG.Encoder libOMX.TI.JPEG.decoder    


# Bluetooth
PRODUCT_PACKAGES += \
    bt_sco_app \
    uim-sysfs 

# FM Radio
#PRODUCT_PACKAGES += \
#    com.ti.fm.fmradioif.xml \
#    fmradioif \
#    FmRxApp \
#    FmTxApp \
#    FmService 

# Release utilities
PRODUCT_PACKAGES += \
	 spyder_releaseutils-finalize_release 
	#spyder_releaseutils-mke2fs\
	#spyder_releaseutils-tune2fs
#    spyder_releaseutils-check_kernel \


# Tests -- Can remove later
PRODUCT_PACKAGES += \
    d2c_test \
    memmgr_test \
    utils_test \
    tiler_ptest \
    overlay_test \
    omx_tests \
    evtest 
#    camera_test \
#    VideoEncTest 

PRODUCT_PACKAGES += \
    Camera \
    Superuser \
    su \
    Usb \
    DockAudio 


PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory \
    FileManager \
    libjni_pinyinime 
#    MusicFX \

#PRODUCT_PACKAGES := \
#    charger \
#    charger_res_images


# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# still need to set english for audio init
PRODUCT_LOCALES += en_US


# copy all kernel modules under the "modules" directory to system/lib/modules
PRODUCT_COPY_FILES += $(shell \
    find device/motorola/spyder/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')

# copy all vendor (motorola) kernel modules to system/lib/modules
PRODUCT_COPY_FILES += $(shell test -d vendor/motorola/spyder/lib/modules &&  \
	find vendor/motorola/spyder/lib/modules -name '*.ko' \
	-printf '%p:system/lib/modules/%f ')

# copy all others kernel modules under the "modules" directory to system/lib/modules
PRODUCT_COPY_FILES += $(shell test -d device/motorola/spyder/modules && \
	find device/motorola/spyder/modules -name '*.ko' \
	-printf '%p:system/lib/modules/%f ')



ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/motorola/spyder/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# stuff specific to ti OMAP4 hardware
$(call inherit-product, hardware/ti/omap4xxx/omap4.mk)
#$(call inherit-product, hardware/ti/camera/camera.mk)
$(call inherit-product-if-exists, hardware/ti/wpan/ti-wpan-products.mk)
#$(call inherit-product-if-exists, vendor/google/google-vendor.mk)
#$(call inherit-product-if-exists, vendor/verizon/spyder-verizon-vendor.mk)
#$(call inherit-product, packages/apps/DSPManager/cyanogen-dsp/Android.mk)

$(call inherit-product, device/motorola/spyder/device_spyder-blobs.mk)

$(call inherit-product, device/motorola/spyder/bootmenu/bootmenu.mk)

$(call inherit-product-if-exists, vendor/motorola/spyder/spyder-vendor.mk)


# stuff common to all Motorola phones -- disabled for Sandbox
#$(call inherit-product, device/motorola/common/common_hijack.mk)

$(call inherit-product, build/target/product/full_base_telephony.mk)


PRODUCT_NAME := full_spyder
PRODUCT_DEVICE := spyder
