ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),spyder)

#ifeq ($(BOARD_USES_AUDIO_LEGACY),true)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)


# output for libaudio intermediates
LIBAUDIO_INTERMEDIATES_PREREQS := $(PRODUCT_OUT)/obj/lib
LIBAUDIO_INTERMEDIATES_TARGETEQS := $(PRODUCT_OUT)/system/lib

# prerequisites for building audio
file := $(LIBAUDIO_INTERMEDIATES_PREREQS)/libaudio.so
$(file) : device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/libaudio.so
	@echo "Copy libaudio.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/libaudio.so $@

file := $(LIBAUDIO_INTERMEDIATES_PREREQS)/liba2dp.so
$(file) : device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/liba2dp.so
	@echo "Copy liba2dp.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/liba2dp.so $@

file := $(LIBAUDIO_INTERMEDIATES_PREREQS)/libaudio_ext.so
$(file) : device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/libaudio_ext.so
	@echo "Copy libaudio_ext.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/libaudio_ext.so $@

file := $(LIBAUDIO_INTERMEDIATES_PREREQS)/libasound.so
$(file) : device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/libasound.so
	@echo "Copy libasound.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/libasound.so $@

file := $(LIBAUDIO_INTERMEDIATES_PREREQS)/libaudiopolicy.so
$(file) : device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/libaudiopolicy.so
	@echo "Copy libaudiopolicy.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/libaudiopolicy.so $@

file := $(LIBAUDIO_INTERMEDIATES_PREREQS)/libaudiopolicy_ext.so
$(file) : device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/libaudiopolicy_ext.so
	@echo "Copy libaudiopolicy_ext.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/libaudiopolicy_ext.so $@

#
# copy to target device
#

file := $(LIBAUDIO_INTERMEDIATES_TARGETEQS)/libaudio.so
$(file) : device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/libaudio.so
	@echo "Copy libaudio.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/libaudio.so $@

file := $(LIBAUDIO_INTERMEDIATES_TARGETEQS)/liba2dp.so
$(file) : device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/liba2dp.so
	@echo "Copy liba2dp.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/liba2dp.so $@

file := $(LIBAUDIO_INTERMEDIATES_TARGETEQS)/libaudio_ext.so
$(file) : device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/libaudio_ext.so
	@echo "Copy libaudio_ext.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/libaudio_ext.so $@

file := $(LIBAUDIO_INTERMEDIATES_TARGETEQS)/libasound.so
$(file) : device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/libasound.so
	@echo "Copy libasound.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/libasound.so $@

file := $(LIBAUDIO_INTERMEDIATES_TARGETEQS)/libaudiopolicy.so
$(file) : device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/libaudiopolicy.so
	@echo "Copy libaudiopolicy.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/libaudiopolicy.so $@

file := $(LIBAUDIO_INTERMEDIATES_TARGETEQS)/libaudiopolicy_ext.so
$(file) : device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/libaudiopolicy_ext.so
	@echo "Copy libaudiopolicy_ext.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/audio/libaudiopolicy_ext.so $@



#include $(all-subdir-makefiles)


#
# audio.primary.spyder
#
include $(CLEAR_VARS)

LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libutils \
    libmedia \
    libhardware \
    libhardware_legacy \
    libdl \
    libaudio \
    libaudio_ext \
    libasound \
    liblog \
    libm \
    liba2dp \
    libhardware_legacy 

LOCAL_STATIC_LIBRARIES := \
    libmedia_helper

LOCAL_WHOLE_STATIC_LIBRARIES := \
    libaudiohw_legacy

LOCAL_MODULE := audio.primary.spyder
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE_TAGS :=  eng debug
#LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)


#
#  libaudiopolicy_legacy2
#

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    AudioPolicyManagerBase.cpp \
    AudioPolicyCompatClient.cpp \
    audio_policy_hal.cpp

ifeq ($(AUDIO_POLICY_TEST),true)
  LOCAL_CFLAGS += -DAUDIO_POLICY_TEST
endif

ifeq ($(BOARD_HAVE_BLUETOOTH),true)
  LOCAL_CFLAGS += -DWITH_A2DP
endif

LOCAL_STATIC_LIBRARIES := libmedia_helper
LOCAL_MODULE := libaudiopolicy_legacy2
LOCAL_MODULE_TAGS := eng debug

include $(BUILD_STATIC_LIBRARY)


#
# audio_policy.spyder
#

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	AudioPolicyManager.cpp

LOCAL_SHARED_LIBRARIES:= \
    liblog \
    libcutils \
    libutils \
    libmedia \
    libm \
    libaudiopolicy \
    libc

LOCAL_STATIC_LIBRARIES := \
    libmedia_helper

LOCAL_WHOLE_STATIC_LIBRARIES:= \
	libaudiopolicy_legacy2
    #libaudiopolicy_legacy \

ifeq ($(BOARD_USES_AUDIO_LEGACY),true)
LOCAL_SHARED_LIBRARIES += libaudiopolicy
endif

LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE:= audio_policy.spyder
LOCAL_MODULE_TAGS := eng debug
#LOCAL_MODULE_TAGS := optional

ifeq ($(BOARD_HAVE_BLUETOOTH),true)
  LOCAL_CFLAGS += -DWITH_A2DP
endif

include $(BUILD_SHARED_LIBRARY)


#endif # BOARD_USES_AUDIO_LEGACY
endif #TARGET_BOOTLOADER_BOARD_NAME