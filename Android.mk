LOCAL_PATH := $(call my-dir)

MY_C_FILES := src/ev.c \
			src/event.c
LOCAL_CFLAGS := -DHAVE_CONFIG_H
MY_INCLUDES := $(LOCAL_PATH)/include

MY_CFLAGS := -DJSON_USE_EXCEPTION=0 \
			-Wno-unused-parameter \
			-Wno-sign-compare \
			-Wno-error \
			-fno-strict-aliasing \
			-Wno-sign-compare \
			-Wno-conversion \
			-Wno-old-style-declaration

include $(CLEAR_VARS)
LOCAL_MODULE := libev
LOCAL_ARM_MODE := arm
LOCAL_CFLAGS := $(MY_CFLAGS) 
LOCAL_C_INCLUDES := $(MY_INCLUDES) 
LOCAL_SHARED_LIBRARIES := libc
LOCAL_SRC_FILES := $(MY_C_FILES)
$(warning $(LOCAL_SRC_FILES))
#LOCAL_MODULE_PATH := $(TARGET_OUT)/aa
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libev
LOCAL_ARM_MODE := arm
LOCAL_CFLAGS := $(MY_CFLAGS)
LOCAL_C_INCLUDES := $(MY_INCLUDES) 
LOCAL_SRC_FILES := $(MY_C_FILES)
include $(BUILD_STATIC_LIBRARY)

