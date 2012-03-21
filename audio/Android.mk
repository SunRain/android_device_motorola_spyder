ifeq ($(BOARD_USES_AUDIO_LEGACY),true)

#LOCAL_PATH := $(call my-dir)


include $(all-subdir-makefiles)

endif # BOARD_USES_AUDIO_LEGACY
