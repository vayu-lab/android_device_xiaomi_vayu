DEVICE_PATH := device/xiaomi/vayua
BOARD_VENDOR := xiaomi

# Security patch level
VENDOR_SECURITY_PATCH := 2021-03-01

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/vintf/manifest.xml
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
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/configs/bluetooth/include
TARGET_USE_QTI_BT_STACK := true

# Power
TARGET_USES_INTERACTION_BOOST := true

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_vayu
TARGET_RECOVERY_DEVICE_MODULES := libinit_vayu

# Platform
TARGET_BOARD_PLATFORM := msmnile
BOARD_USES_QCOM_HARDWARE := true

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Filesystem
TARGET_FS_CONFIG_GEN := $(COMMON_PATH)/config.fs

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

#Inherit from the proprietary version
-include vendor/xiaomi/vayu/BoardConfigVendor.mk
