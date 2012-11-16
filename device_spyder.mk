#
# This is the product configuration for a full spyder
#

-include device/motorola/spyder/BuildToggle.mk

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects

# Device overlay
#    DEVICE_PACKAGE_OVERLAYS += device/motorola/spyder/overlay/aosp
DEVICE_PACKAGE_OVERLAYS += device/motorola/spyder/overlay

# high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
    
PRODUCT_PACKAGES := \
    charger \
    charger_res_images

PRODUCT_PACKAGES += \
    camera.omap4 \
    libinvensense_mpl \
    libedid 
    
PRODUCT_PACKAGES += \
    libaudioutils \
    libaudiohw_legacy 

# BlueZ a2dp Audio HAL module
PRODUCT_PACKAGES += \
    audio.a2dp.default
    
# BlueZ test tools
PRODUCT_PACKAGES += \
    hciconfig \
    hcitool

    # Tiler
PRODUCT_PACKAGES += \
    libtimemmgr
    
# Modem
PRODUCT_PACKAGES += \
    libaudiomodemgeneric \
    rild \
    radiooptions
    
# Wifi
PRODUCT_PACKAGES += \
    lib_driver_cmd_wl12xx \
    dhcpcd.conf \
    hostapd.conf \
    wifical.sh \
    wpa_supplicant.conf \
    TQS_D_1.7.ini \
    TQS_D_1.7_127x.ini \
    crda \
    regulatory.bin \
    calibrator \
    busybox

# Wifi Direct
PRODUCT_PACKAGES += \
    ti_wfd_libs \
    ti-wpan-fw

# Bluetooth
PRODUCT_PACKAGES += \
    bt_sco_app \
    BluetoothSCOApp 
    #uim-sysfs 

PRODUCT_PACKAGES += \
    evtest \
    Superuser \
    su \
    DockAudio \
    Camera \
    camera_test \
    CameraOMAP4 \
    parse_hdmi_edid \

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory \
    FileManager \
    MusicFX \
    Apollo \
    VideoEditor \
    VoiceDialer \
    Basic \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam \
    Gallery2 \
    FileExplorer

ifeq ($(PRODUCT_TARGET_UMTS_SPYDER),true)
PRODUCT_PACKAGES += \
    Stk
else
PRODUCT_PACKAGES += \
    nc \
    Stk \
    libreference-cdma-sms \
    MotoSimUiHelper
endif

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

    
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/motorola/spyder/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

    
ifeq ($(PRODUCT_TARGET_UMTS_SPYDER),true)
$(call inherit-product, device/motorola/spyder/device_spyder_umts-prop.mk)
else
$(call inherit-product, device/motorola/spyder/device_spyder_cdma-prop.mk)
endif

$(call inherit-product, build/target/product/full_base_telephony.mk)

# stuff specific to ti OMAP4 hardware
#$(call inherit-product, hardware/ti/omap4xxx/omap4.mk)
$(call inherit-product, device/motorola/spyder/omap4.mk)
#$(call inherit-product, hardware/ti/wpan/ti-wpan-products.mk)


$(call inherit-product, device/motorola/spyder/device_spyder-blobs.mk)

$(call inherit-product-if-exists, vendor/cm/config/gsm.mk)
$(call inherit-product-if-exists, vendor/cm/config/common_full_phone.mk)

#$(call inherit-product-if-exists, vendor/verizon/spyder-leak-verizon-vendor.mk)
#$(call inherit-product-if exists, device/ti/proprietary-open/wl12xx/wlan/wl12xx-wlan-fw-products.mk)
ifeq ($(PRODUCT_TARGET_UMTS_SPYDER),true)
$(call inherit-product-if-exists, vendor/motorola/spyder/spyder-umts-blobs.mk)
else
$(call inherit-product-if-exists, vendor/motorola/spyder/spyder-cdma-blobs.mk)
endif
$(call inherit-product-if-exists, vendor/motorola/spyder/common_drm_phone.mk)
$(call inherit-product-if-exists, vendor/motorola/spyder/spyder-vendor.mk)
$(call inherit-product-if-exists, vendor/motorola/spyder/spyder-vendor-pvr.mk)
$(call inherit-product-if-exists, vendor/motorola/spyder/spyder-vendor-blobs.mk)
$(call inherit-product-if-exists, vendor/motorola/spyder/spyder-vendor-stock-camera.mk)
$(call inherit-product-if-exists, vendor/motorola/spyder/spyder-vendor-stock-ducati.mk)

$(call inherit-product-if-exists, vendor/google/gapps.mk)

$(call inherit-product, device/motorola/spyder/bootmenu/bootmenu.mk)

# stuff common to all Motorola phones -- disabled for Sandbox
#$(call inherit-product, device/motorola/common/common_hijack.mk)

PRODUCT_NAME := full_spyder
PRODUCT_DEVICE := spyder
