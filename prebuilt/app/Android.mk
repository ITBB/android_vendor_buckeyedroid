 LOCAL_PATH:= $(call my-dir)

 include $(CLEAR_VARS)
LOCAL_MODULE := com.google.android.gm.exchange
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)


