#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8250-common
-include device/xiaomi/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/lmi

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Display
TARGET_SCREEN_DENSITY := 440

# 69hz hz
BOARD_KERNEL_CMDLINE += msm_drm.framerate_override=1

# Fingerprint
SOONG_CONFIG_XIAOMI_KONA_FOD_POS_X = 439
SOONG_CONFIG_XIAOMI_KONA_FOD_POS_Y = 1655
SOONG_CONFIG_XIAOMI_KONA_FOD_SIZE = 202

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop

# inherit from the proprietary version
-include vendor/xiaomi/lmi/BoardConfigVendor.mk
