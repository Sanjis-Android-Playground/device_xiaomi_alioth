#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit Camera-related flags
TARGET_USES_MIUI_CAMERA := true
TARGET_INCLUDES_MIUI_CAMERA := true

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

TARGET_INCLUDE_REVANCED := false

PRODUCT_NAME := lineage_alioth
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F3

PRODUCT_SYSTEM_NAME := alioth_global
PRODUCT_SYSTEM_DEVICE := alioth

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=POCO/alioth_global/alioth:13/TKQ1.221114.001/V816.0.3.0.TKHMIXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

TARGET_SUPPORTED_REFRESH_RATES := 60,120
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_AXFX := true
AXION_MAINTAINER := sanji
AXION_CAMERA_REAR_INFO := 48,8,5
AXION_CAMERA_FRONT_INFO := 20
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil
PERF_ANIM_OVERRIDE := false
# GPU
GPU_FREQS_PATH := /sys/class/kgsl/kgsl-3d0/gpu_available_frequencies
GPU_MIN_FREQ_PATH := /sys/class/kgsl/kgsl-3d0/min_clock_mhz

# High Brightness Mode (HBM)
HBM_SUPPORTED := true
HBM_NODE := /sys/devices/platform/soc/soc:qcom,dsi-display-primary/hbm

# Flashlight strength
TORCH_STR_SUPPORTED := false

# doze fix
# for devices with doze/sensor related issues 
TARGET_NEEDS_DOZE_FIX := false

# Charging
BYPASS_CHARGE_SUPPORTED := true
TARGET_IS_LOW_RAM := false
