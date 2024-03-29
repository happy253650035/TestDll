LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE     :=  HelloWorld
MY_FILES_PATH  :=  $(LOCAL_PATH)
# 递归遍历目录下的所有的文件
rwildcard=$(wildcard $1$2) $(foreach d,$(wildcard $1*),$(call rwildcard,$d/,$2))
# 递归遍历获取所有目录
MY_ALL_DIRS := $(dir $(foreach src_path,$(MY_FILES_PATH), $(call rwildcard,$(src_path),*/) ) )
MY_ALL_DIRS := $(call uniq,$(MY_ALL_DIRS))
MY_CPP_LIST := $(wildcard $(LOCAL_PATH)/*.cpp)
MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/Box2D/Collision/*.cpp)
MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/Box2D/Collision/Shapes/*.cpp)
MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/Box2D/Common/*.cpp)
MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/Box2D/Dynamics/*.cpp)
MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/Box2D/Dynamics/Contacts/*.cpp)
MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/Box2D/Dynamics/Joints/*.cpp)
MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/Box2D/Rope/*.cpp)
# 赋值给NDK编译系统
LOCAL_SRC_FILES  := $(MY_CPP_LIST)
LOCAL_C_INCLUDES := $(MY_ALL_DIRS)
LOCAL_LDLIBS     := -llog -landroid
LOCAL_CFLAGS    := -DANDROID_NDK

include $(BUILD_SHARED_LIBRARY)