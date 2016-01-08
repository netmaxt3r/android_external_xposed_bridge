LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := XposedBridge

LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(call all-java-files-under, hiddenapistubs/src/main/java/)
LOCAL_SRC_FILES += $(call all-java-files-under, app/src/main/apacheCommonsLang/external/)

LOCAL_SRC_FILES += $(call all-java-files-under, app/src/main/java/)
LOCAL_PROGUARD_ENABLED := disabled
include $(BUILD_JAVA_LIBRARY)

