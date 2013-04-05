# Camera
USE_CAMERA_STUB := false
BOARD_USES_TI_CAMERA_HAL := true
TI_CAMERAHAL_DEBUG_ENABLED := true

# ICS Leak Hacks
BOARD_OVERRIDE_FB0_WIDTH := 540
BOARD_OVERRIDE_FB0_HEIGHT := 960

# inherit from the proprietary version
-include vendor/motorola/spyder/BoardConfigVendor.mk
-include device/motorola/spyder/BuildToggle.mk

# Processor
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := omap4
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_BOOTLOADER_BOARD_NAME := spyder
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_TLS_REGISTER := true
#NEEDS_ARM_ERRATA_754319_754320 := true
#TARGET_GLOBAL_CFLAGS += -DNEEDS_ARM_ERRATA_754319_754320

#BOARD_PROVIDES_LIBRIL := true


# Kernel
TARGET_PREBUILT_KERNEL := device/motorola/spyder/kernel
BOARD_KERNEL_CMDLINE := omap_wdt.timer_margin=60 oops=panic console=/dev/null rw mem=1023M@0x80000000 vram=10300K omapfb.vram=0:8256K,1:4K,2:2040K init=/init ip=off mmcparts=mmcblk1:p7(pds),p8(utags),p14(boot),p15(recovery),p16(cdrom),p17(misc),p18(cid),p19(kpanic),p20(system),p21(cache),p22(preinstall),p23(webtop),p24(userdata),p25(emstorage) mot_sst=1
#BOARD_KERNEL_CMDLINE := root=/dev/ram0 rw mem=1024M@0x80000000 console=ttyO2,115200n8 init=/init ip=off mmcparts=mmcblk1:p7(pds),p8(utags),p14(boot),p15(recovery),p16(cdrom),p17(misc),p18(cid),p19(kpanic),p20(system),p21(cache),p22(preinstall),p23(webtop),p24(userdata),p25(emstorage) mot_sst=1 androidboot.bootloader=0x0A72
BOARD_KERNEL_BASE := 0x80000000
BOARD_PAGE_SIZE := 0x4096


# Kernel Build
#TARGET_KERNEL_SOURCE := kernel/motorola/solana
#TARGET_KERNEL_CONFIG := hashcode_1024_razr_defconfig
#TARGET_PREBUILT_KERNEL := device/motorola/spyder/kernel

#KERNEL_EXTERNAL_MODULES:
#	make clean -C hardware/ti/wlan/mac80211/compat_wl12xx
#	make -C hardware/ti/wlan/mac80211/compat_wl12xx KERNEL_DIR=$(KERNEL_OUT) KLIB=$(KERNEL_OUT) KLIB_BUILD=$(KERNEL_OUT) ARCH=arm CROSS_COMPILE="arm-eabi-"
#	cp hardware/ti/wlan/mac80211/compat_wl12xx/compat/compat.ko $(KERNEL_MODULES_OUT)
#	cp hardware/ti/wlan/mac80211/compat_wl12xx/net/mac80211/mac80211.ko $(KERNEL_MODULES_OUT)
#	cp hardware/ti/wlan/mac80211/compat_wl12xx/net/wireless/cfg80211.ko $(KERNEL_MODULES_OUT)
#	cp hardware/ti/wlan/mac80211/compat_wl12xx/drivers/net/wireless/wl12xx/wl12xx.ko $(KERNEL_MODULES_OUT)
#	cp hardware/ti/wlan/mac80211/compat_wl12xx/drivers/net/wireless/wl12xx/wl12xx_spi.ko $(KERNEL_MODULES_OUT)
#	cp hardware/ti/wlan/mac80211/compat_wl12xx/drivers/net/wireless/wl12xx/wl12xx_sdio.ko $(KERNEL_MODULES_OUT)
#	cp hardware/ti/wlan/mac80211/compat_wl12xx/drivers/net/wireless/wl12xx/wl12xx_sdio.ko $(KERNEL_MODULES_OUT)
#	tar -xvf $(ANDROID_BUILD_TOP)/device/ti/proprietary-open/omap4/sgx_src/eurasia_km.tgz -C $(KERNEL_OUT)
#	make clean -C $(KERNEL_OUT)/eurasia_km/eurasiacon/build/linux2/omap4430_android
#	make -C $(KERNEL_OUT)/eurasia_km/eurasiacon/build/linux2/omap4430_android ARCH=arm KERNEL_CROSS_COMPILE=arm-eabi- CROSS_COMPILE=arm-eabi- KERNELSRC=$(KERNEL_OUT)/../../../../../../kernel/motorola/solana KERNELDIR=$(KERNEL_OUT) TARGET_PRODUCT="blaze_tablet" BUILD=release TARGET_SGX=540 PLATFORM_VERSION=4.0
#	cp $(KERNEL_OUT)/../../target/kbuild/pvrsrvkm_sgx540_120.ko $(KERNEL_MODULES_OUT)

#TARGET_KERNEL_MODULES := KERNEL_EXTERNAL_MODULES


# Storage / Sharing
BOARD_VOLD_MAX_PARTITIONS := 100
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
#BOARD_CUSTOM_USB_CONTROLLER := ../../device/moto/spyder/UsbController.cpp
BOARD_MTP_DEVICE := "/dev/mtp_usb"

# Connectivity - Wi-Fi
USES_TI_MAC80211 := true
ifdef USES_TI_MAC80211
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X_TI
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wl12xx
BOARD_HOSTAPD_DRIVER             := NL80211
PRODUCT_WIRELESS_TOOLS           := true
#BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_wl12xx
BOARD_WLAN_DEVICE                := wl12xx_mac80211
BOARD_SOFTAP_DEVICE              := wl12xx_mac80211
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wl12xx_sdio.ko"
WIFI_DRIVER_MODULE_NAME          := "wl12xx_sdio"
WIFI_FIRMWARE_LOADER             := ""
COMMON_GLOBAL_CFLAGS += -DUSES_TI_MAC80211
endif

#COMMON_GLOBAL_CFLAGS += -DOMAP_ICS_CAMERA

# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
HAVE_2_3_DSP := 1
#BOARD_USES_AUDIO_LEGACY := true
#ifdef BOARD_USES_AUDIO_LEGACY
#    COMMON_GLOBAL_CFLAGS += -DBOARD_USES_AUDIO_LEGACY
#endif
COMMON_GLOBAL_CFLAGS += -DICS_AUDIO_BLOB
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USE_MOTO_DOCK_HACK := true


# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Bootmenu
BOARD_USES_BOOTMENU := true
BOARD_WITH_CPCAP := true
TARGET_CPU_SMP := true
BUILD_BOOTMENU_STANDALONE :=1
#BOARD_CUSTOM_BOOTMENU_GRAPHICS := ../../../device/motorola/spyder/bootmenu/bm_graphics.c
BOARD_BOOTMENU_NO_OVERCLOCK :=true
BOARD_BOOTMODE_CONFIG_FILE := /cache/recovery/bootmode.conf
TARGET_NEEDS_MOTOROLA_HIJACK :=true


# Recovery
BUILD_BOOTMENU_STANDALONE := true
BOARD_HAS_LOCKED_BOOTLOADER := true
TARGET_PREBUILT_RECOVERY_KERNEL := device/motorola/spyder/recovery-kernel
#BOARD_CUSTOM_GRAPHICS := ../../../device/motorola/spyder/recovery/graphics.c
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/motorola/spyder/recovery/recovery_ui.c
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_ALWAYS_INSECURE := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_MKE2FS := device/motorola/spyder/releaseutils/mke2fs
BOARD_NONSAFE_SYSTEM_DEVICE := /dev/block/mmcblk1p20
BOARD_HAS_SDCARD_INTERNAL := true
#BOARD_HAS_SDEXT := false
BOARD_HAS_WEBTOP := true
TARGET_RECOVERY_PRE_COMMAND := "echo 1 > /data/.recovery_mode; sync;"
TARGET_RECOVERY_PRE_COMMAND_CLEAR_REASON := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"


# Sandbox Filesystem Settings
BOARD_SYSTEM_DEVICE := /dev/block/system
BOARD_SYSTEM_FILESYSTEM_OPTIONS := noatime,nodiratime
BOARD_SYSTEM_FILESYSTEM := ext3


# Graphics
BOARD_EGL_CFG := device/motorola/spyder/prebuilt/etc/egl.cfg
USE_OPENGL_RENDERER := true
#COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_EGL_PIXEL_FORMAT_YV12 -DMISSING_GRALLOC_BUFFERS
#COMMON_GLOBAL_CFLAGS += -DSURFACEFLINGER_FORCE_SCREEN_RELEASE

# OMAP
OMAP_ENHANCEMENT := true
ifdef OMAP_ENHANCEMENT
COMMON_GLOBAL_CFLAGS += -DOMAP_ENHANCEMENT -DTARGET_OMAP4
endif

#ENHANCED_DOMX := true
ifdef ENHANCED_DOMX
    COMMON_GLOBAL_CFLAGS += -DENHANCED_DOMX
    DOMX_PATH := hardware/ti/domx
else
    DOMX_PATH := hardware/ti/omap4xxx/domx
endif
USE_ITTIAM_AAC := true
ifdef USE_ITTIAM_AAC
COMMON_GLOBAL_CFLAGS += -DUSE_ITTIAM_AAC
endif

#COMMON_GLOBAL_CFLAGS += -DTI_UTILS_MESSAGE_QUEUE_DEBUG_ENABLED -DTI_UTILS_MESSAGE_QUEUE_DEBUG_FUNCTION_NAMES


# MOTOROLA
USE_MOTOROLA_CODE := true
ifdef USE_MOTOROLA_CODE
COMMON_GLOBAL_CFLAGS += -DUSE_MOTOROLA_CODE
endif
USE_MOTOROLA_USERS := true
ifdef USE_MOTOROLA_USERS
COMMON_GLOBAL_CFLAGS += -DUSE_MOTOROLA_USERS
endif


# Media / Radio
# Off currently

# OTA Packaging
#TARGET_PROVIDES_RELEASETOOLS := true
#TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/motorola/spyder/releasetools/spyder_ota_from_target_files
#TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := device/motorola/spyder/releasetools/spyder_img_from_target_files
#TARGET_CUSTOM_RELEASETOOL := ./device/motorola/spyder/releasetools/squisher
TARGET_CUSTOM_RELEASETOOL := ./device/motorola/spyder/releasetools/squisher

# Hijack
#TARGET_NEEDS_MOTOROLA_HIJACK := true
#BOARD_HIJACK_LOG_ENABLE := true

# CodeAurora Optimizations: msm8960: Improve performance of memmove, bcopy, and memmove_words
# added by twa_priv
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true


# Misc.
BOARD_USE_BATTERY_CHARGE_COUNTER := true
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_NEEDS_CUTILS_LOG := true
BOARD_USES_SECURE_SERVICES := true
BOARD_HAS_MAPPHONE_SWITCH := true
USE_IPV6_ROUTE := true
BOARD_HAS_LOCKED_BOOTLOADER := true
#LEGACY_RIL := true

BOARD_HAS_VIRTUAL_KEYS := true
BOARD_VIRTUAL_KEY_HEIGHT := 64
BOARD_MAX_TOUCH_X := 1024
BOARD_MAX_TOUCH_Y := 1024

