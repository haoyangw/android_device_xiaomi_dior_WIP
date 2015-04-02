ifeq ($(TARGET_DEVICE),dior)

LOCAL_PATH := $(call my-dir)
 
include $(call all-subdir-makefiles)

include $(CLEAR_VARS)
 
ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)
 
# include the non-open-source counterpart to this file
-include vendor/xiaomi/dior/AndroidBoardVendor.mk

# Create a link for the WCNSS config file, which ends up as a writable version in /data/misc/wifi
$(shell mkdir -p $(TARGET_OUT)/etc/firmware/wlan/prima; \
	ln -sf /data/misc/wifi/WCNSS_qcom_cfg.ini \
		$(TARGET_OUT)/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini)

endif
