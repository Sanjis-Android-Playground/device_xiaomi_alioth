#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8250-common
include device/xiaomi/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/alioth
# Disable OTA VINTF checks completely
BOARD_SKIP_VINTF_CHECK := true


# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
# Disable SELinux neverallow enforcement (development only!)
SELINUX_IGNORE_NEVERALLOWS := true
BOARD_DISABLE_WFD := true

# Display
TARGET_SCREEN_DENSITY := 440

# Init
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_alioth

# Kernel
TARGET_KERNEL_CONFIG := vendor/alioth_defconfig

# OTA assert
TARGET_OTA_ASSERT_DEVICE := alioth,aliothin

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/xiaomi/alioth/BoardConfigVendor.mk
