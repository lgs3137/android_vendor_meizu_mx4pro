LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := locked_recovery
LOCAL_MODULE_TAGS := optional
LOCAL_POST_INSTALL_CMD := \
    rm -rf $(TARGET_OUT)/twrp; \
    cp -rf $(TARGET_RECOVERY_ROOT_OUT)/proc $(TARGET_OUT)/twrp; \
    cp -rf $(TARGET_RECOVERY_ROOT_OUT)/etc $(TARGET_OUT)/twrp; \
    cp -rf $(TARGET_RECOVERY_ROOT_OUT)/license $(TARGET_OUT)/twrp; \
    cp -rf $(TARGET_RECOVERY_ROOT_OUT)/res $(TARGET_OUT)/twrp; \
    cp -rf $(TARGET_RECOVERY_ROOT_OUT)/sbin $(TARGET_OUT)/twrp; \
    cp -rf $(TARGET_RECOVERY_ROOT_OUT)/system $(TARGET_OUT)/twrp; \
    cp -rf $(TARGET_RECOVERY_ROOT_OUT)/tmp $(TARGET_OUT)/twrp; \
    cp -rf $(TARGET_RECOVERY_ROOT_OUT)/twres $(TARGET_OUT)/twrp;
LOCAL_ADDITIONAL_DEPENDENCIES := $(PRODUCT_OUT)/recovery.img
include $(BUILD_PHONY_PACKAGE)
