#
#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Vsmart Active 3 device
$(call inherit-product, device/vsmart/V530A/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_V530A
PRODUCT_DEVICE := V530A
PRODUCT_BRAND := vsmart
PRODUCT_MODEL := Active 3
PRODUCT_MANUFACTURER := vsmart

# Product characteristics
PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

BUILD_FINGERPRINT := vsmart/V530A/V530A:9/PPR1.180610.011/root.V530A_OPEN_U_M2_20200106:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="V530A-user 9 PPR1.180610.011.V530A_OPEN_U_M2_20200106 release-keys"

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-vsmart
