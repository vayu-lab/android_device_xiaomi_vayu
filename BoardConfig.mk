DEVICE_PATH := device/xiaomi/vayu
BOARD_VENDOR := xiaomi

# Security patch level
VENDOR_SECURITY_PATCH := 2021-05-01

BOARD_DYNAMIC_PARTITION_ENABLE := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a76

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a76

# Kernel
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_SOURCE := kernel/xiaomi/vayu
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
KERNEL_DEFCONFIG := $(shell ls ./kernel/msm-4.14/arch/arm64/configs/ | grep vayu..._defconfig)
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 earlycon=msm_geni_serial,0xa90000 androidboot.hardware=qcom androidboot.console=ttyMSM0 androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 swiotlb=2048 loop.max_part=7 androidboot.usbcontroller=a600000.dwc3 buildvariant=user

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msmnile
TARGET_NO_BOOTLOADER := true

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

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE := $(DEVICE_PATH)/framework_manifest.xml

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flag 2

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

include device/qcom/sepolicy_vndr/SEPolicy.mk
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(COMMON_PATH)/sepolicy/private
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += $(COMMON_PATH)/sepolicy/public
BOARD_VENDOR_SEPOLICY_DIRS += $(COMMON_PATH)/sepolicy/vendor
BOARD_SEPOLICY_M4DEFS += \
    debugfs_clk=vendor_debugfs_clk \
    debugfs_ipc=vendor_debugfs_ipc \
    latency_device=vendor_latency_device \
    nfc_vendor_data_file=vendor_nfc_vendor_data_file \
    persist_audio_file=vendor_persist_audio_file \
    persist_sensors_file=vendor_persist_sensors_file \
    public_vendor_default_prop=vendor_public_vendor_default_prop \
    sensors_prop=vendor_sensors_prop \
    sysfs_boot_adsp=vendor_sysfs_boot_adsp \
    sysfs_devfreq=vendor_sysfs_devfreq \
    sysfs_fingerprint=vendor_sysfs_fingerprint \
    sysfs_graphics=vendor_sysfs_graphics \
    sysfs_kgsl=vendor_sysfs_kgsl \
    sysfs_scsi_host=vendor_sysfs_scsi_host \
    sysfs_ssr=vendor_sysfs_ssr \
    wcnss_service_exec=vendor_wcnss_service_exec \
    wifi_vendor_data_file=vendor_wifi_vendor_data_file

# Display
TARGET_USES_COLOR_METADATA := true
TARGET_USES_DISPLAY_RENDER_INTENTS := true
TARGET_USES_DRM_PP := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_GRALLOC4 := true
TARGET_USES_HWC2 := true
TARGET_USES_ION := true

# RIL
ENABLE_VENDOR_RIL_SERVICE := true
TARGET_PROVIDES_QTI_TELEPHONY_JAR := true
TARGET_RIL_VARIANT := caf

# VNDK
BOARD_VNDK_VERSION := current

#Inherit from the proprietary version
-include vendor/xiaomi/vayu/BoardConfigVendor.mk
