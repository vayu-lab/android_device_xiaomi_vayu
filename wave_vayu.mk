# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Wave stuff
$(call inherit-product, vendor/wave/configs/common.mk)

# Inherit from vayu device
$(call inherit-product, $(LOCAL_PATH)/device.mk)


# Boot animation size
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := vayu
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := wave_vayu
PRODUCT_MODEL := POCO X3 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := vayu
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC=" 11 RKQ1.200826.002 V12.0.4.0.RJUEUXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := POCO/vayu_eea/vayu:11/RKQ1.200826.002/V12.0.4.0.RJUEUXM:user/release-keys
