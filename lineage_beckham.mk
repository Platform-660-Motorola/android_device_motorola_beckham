#
# Copyright (C) 2017 The LineageOS Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from device
$(call inherit-product, device/motorola/beckham/device.mk)

# Target from device
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

# Device identifiers
PRODUCT_DEVICE := beckham
PRODUCT_NAME := lineage_beckham
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Moto Z3 Play
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=beckham
