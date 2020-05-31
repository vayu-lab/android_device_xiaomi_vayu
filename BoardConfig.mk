DEVICE_PATH := device/xiaomi/vayua
BOARD_VENDOR := xiaomi

# Security patch level
VENDOR_SECURITY_PATCH := 2021-03-01

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/vintf/manifest.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/android.hardware.atrace@1.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/android.hardware.biometrics.fingerprint@2.1-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/android.hardware.cas@1.2-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/android.hardware.dumpstate@1.1-service.xiaomi.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/android.hardware.gnss@2.1-service-qti.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/android.hardware.graphics.composer-qti-display.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/android.hardware.graphics.mapper-impl-qti-display.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/android.hardware.health@2.1.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/android.hardware.lights-qti.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/android.hardware.neuralnetworks@1.3-service-qti-hta.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/android.hardware.neuralnetworks@1.3-service-qti.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/android.hardware.usb@1.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/android.hardware.wifi.hostapd.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/android.hardware.wifi@1.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/manifest.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/manifest_android.hardware.drm@1.3-service.clearkey.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/manifest_android.hardware.drm@1.3-service.widevine.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/manifest_vendor.xiaomi.hardware.mfidoca.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/manifest_vendor.xiaomi.hardware.mlipay.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/manifest_vendor.xiaomi.hardware.mtdservice.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/manifest_vendor.xiaomi.hardware.tidaservice.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/manifest_vendor.xiaomi.hardware.vsimapp.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/power.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/vendor.qti.gnss@4.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/vendor.qti.hardware.display.allocator-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/vendor.qti.hardware.servicetracker@1.2-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/vendor.qti.hardware.vibrator.service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/vendor.xiaomi.hardware.micharge@1.0.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/vendor.xiaomi.hardware.misys@1.0.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/vendor.xiaomi.hardware.misys@2.0.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest/vendor.xiaomi.hardware.misys@3.0.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/vintf/compatibility_matrix.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH)/vintf/framework_compatibility_matrix.xml

# Device Properties
TARGET_ODM_PROP := $(DEVICE_PATH)/configs/properties/odm.prop
TARGET_PRODUCT_PROP := $(DEVICE_PATH)/configs/properties/product.prop
TARGET_SYSTEM_EXT_PROP := $(DEVICE_PATH)/configs/properties/system_ext.prop
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/configs/properties/system.prop
TARGET_VENDOR_PROP := $(DEVICE_PATH)/configs/properties/vendor.prop

#  Assert
TARGET_OTA_ASSERT_DEVICE := vayu,bhima

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include
TARGET_USE_QTI_BT_STACK := true

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_vayu
TARGET_RECOVERY_DEVICE_MODULES := libinit_vayu

#Inherit from the proprietary version
-include vendor/xiaomi/vayu/BoardConfigVendor.mk
