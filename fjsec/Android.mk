LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  unlock_lsm_fjsec.c \
  ../ptmx.c \
  ../backdoor_mmap.c

LOCAL_MODULE := unlock_lsm_fjsec
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES += .
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_STATIC_LIBRARIES += libdevice_database
LOCAL_STATIC_LIBRARIES += libkallsyms
LOCAL_STATIC_LIBRARIES += libcutils libc

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  unlock_mount_fjsec.c \
  ../ptmx.c \
  ../backdoor_mmap.c

LOCAL_MODULE := unlock_mount_fjsec
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES += .
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_STATIC_LIBRARIES += libdevice_database
LOCAL_STATIC_LIBRARIES += libkallsyms
LOCAL_STATIC_LIBRARIES += libcutils libc

include $(BUILD_EXECUTABLE)
