ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),spyder)

ifeq ($(BOARD_USES_CAMERASHIM),true)

LOCAL_PATH := $(call my-dir)

# output for libcamera ntermediates
LIBCAMERA_INTERMEDIATES_PREREQS := $(PRODUCT_OUT)/obj/lib

# prerequisites for building camera
file := $(LIBCAMERA_INTERMEDIATES_PREREQS)/libcamera.so
$(file) : device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/camera/libcamera.so
	@echo "Copy libcamera.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/camera/libcamera.so $@

file := $(LIBCAMERA_INTERMEDIATES_PREREQS)/libomxcameraadapter.so
$(file) : device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/camera/libomxcameraadapter.so
	@echo "Copy libomxcameraadapter.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/camera/libomxcameraadapter.so $@

file := $(LIBCAMERA_INTERMEDIATES_PREREQS)/libtiutils.so
$(file) : device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/camera/libtiutils.so
	@echo "Copy libtiutils.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a device/motorola/$(TARGET_BOOTLOADER_BOARD_NAME)/camera/libtiutils.so $@


endif # BOARD_USES_CAMERASHIM
endif #TARGET_BOOTLOADER_BOARD_NAME