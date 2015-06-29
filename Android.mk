LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := XposedBridge

LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(call all-java-files-under, HiddenAPIStubs/src)
LOCAL_SRC_FILES += $(call all-java-files-under, lib/apache-commons-lang)

LOCAL_SRC_FILES += $(call all-java-files-under, src)
LOCAL_PROGUARD_ENABLED := disabled
include $(BUILD_JAVA_LIBRARY)

