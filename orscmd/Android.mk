LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

ifeq ($(BR_OFFICIAL),true)
    LOCAL_CFLAGS += -DTW_DEVICE_VERSION='"-S-1.5.0-OFFICIAL"'
else
    LOCAL_CFLAGS += -DTW_DEVICE_VERSION='"-S-1.5.0-UNOFFICIAL"'
endif

LOCAL_SRC_FILES:= \
	orscmd.cpp
LOCAL_CFLAGS += -c -W
LOCAL_MODULE := orscmd
LOCAL_MODULE_STEM := twrp
LOCAL_MODULE_TAGS:= eng
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_PACK_MODULE_RELOCATIONS := false
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
include $(BUILD_EXECUTABLE)
