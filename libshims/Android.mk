LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := libdatasource_shim.cpp
LOCAL_MODULE := libdatasource_shim
LOCAL_MODULE_TAGS := optional
LOCAL_PROPRIETARY_MODULE := true

include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)

LOCAL_SRC_FILES := libcameraservice_shim.cpp
LOCAL_MODULE := libcameraservice_shim
LOCAL_MODULE_TAGS := optional
LOCAL_PROPRIETARY_MODULE := true

include $(BUILD_SHARED_LIBRARY) 
