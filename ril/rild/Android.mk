# Copyright 2006 The Android Open Source Project

LOCAL_PATH:= $(call my-dir)

ifeq ($(BOARD_PROVIDES_RILD),true)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	rild.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../include \
	$(TARGET_OUT_HEADERS)/libril

LOCAL_SHARED_LIBRARIES := \
	liblog \
	libcutils \
	libril \
	libdl

LOCAL_CFLAGS := -DRIL_SHLIB

LOCAL_MODULE:= rild
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)

# For radiooptions binary
# =======================
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	radiooptions.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../include

LOCAL_SHARED_LIBRARIES := \
	liblog \
	libcutils \

LOCAL_CFLAGS := \

LOCAL_MODULE:= radiooptions
LOCAL_MODULE_TAGS := debug

include $(BUILD_EXECUTABLE)
endif