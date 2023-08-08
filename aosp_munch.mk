#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from munch device
$(call inherit-product, device/xiaomi/munch/device.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier
PRODUCT_NAME := aosp_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F4
PRODUCT_CHARACTERISTICS := nosdcard

# Specific flags
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
