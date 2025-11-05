#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# A/B
TARGET_IS_VAB := true

# Inherit from sm8250-common
$(call inherit-product, device/xiaomi/sm8250-common/kona.mk)
DEVICE_FRAMEWORK_MANIFEST_FILE :=
DEVICE_MANIFEST_FILE :=
DEVICE_MATRIX_FILE :=
DEVICE_FRAMEWORK_MANIFEST_FILE := 


# Register dummy VINTF fragments to satisfy OTA check
# Register dummy VINTF fragments
PRODUCT_PACKAGES += \
    alioth_framework_manifest \
    alioth_system_manifest \
    alioth_device_cm


# Disable VINTF enforcement for OTA packaging
PRODUCT_OTA_ENFORCE_VINTF_MANIFEST := false
PRODUCT_ENFORCE_VINTF_MANIFEST := false
PRODUCT_ENFORCE_VINTF_MANIFEST_CHECKS := false
# ==== Disable VINTF checks for OTA packaging ====
PRODUCT_OTA_ENFORCE_VINTF_MANIFEST := false
PRODUCT_ENFORCE_VINTF_MANIFEST := false
PRODUCT_ENFORCE_VINTF_MANIFEST_CHECKS := false
PRODUCT_ENFORCE_VINTF_MANIFEST_OVERRIDE := true

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Camera
PRODUCT_PACKAGES += \
    libpiex_shim
# Disable missing QSSI vendor compatibility matrix
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE :=
DEVICE_MATRIX_FILE :=

# Libinit
$(call soong_config_set,libinit,vendor_init_lib,//$(LOCAL_PATH):init_xiaomi_alioth)

# Miui Camera
#include device/xiaomi/camera/miuicamera.mk

# Miui Camera STLicense
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/st_license.lic:$(TARGET_COPY_OUT_VENDOR)/etc/camera/st_license.lic

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/alioth/alioth-vendor.mk)
