LOCAL_PATH:= $(call my-dir)
ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),eg909)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
