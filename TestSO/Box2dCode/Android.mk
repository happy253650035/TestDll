LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE     :=  HelloWorld
LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_SRC_FILES  := HelloWorld.cpp
LOCAL_LDLIBS     := -llog -landroid
LOCAL_CFLAGS    := -DANDROID_NDK

include $(BUILD_SHARED_LIBRARY)