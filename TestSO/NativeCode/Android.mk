LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE     :=  UnityCppInterop
LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_SRC_FILES  := Bridge.cpp \
					Box2d\Box2D.cpp
LOCAL_LDLIBS     := -llog -landroid
LOCAL_CFLAGS    := -DANDROID_NDK

include $(BUILD_SHARED_LIBRARY)