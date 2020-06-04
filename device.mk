#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Overlay from mtk-telephony-ext
include vendor/mediatek/hardware/telephony-ext/overlay.mk

# A/B
AB_OTA_UPDATER := false

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libaacwrapper

# Camera
PRODUCT_PACKAGES += \
    Snap

# Init cripts
PRODUCT_PACKAGES += \
    init.mt6771.rc \
    fstab.mt6771

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/mtk-kpd.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/mtk-kpd.idc \
    $(LOCAL_PATH)/idc/mtk-pad.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/mtk-pad.idc \
    $(LOCAL_PATH)/keylayout/ACCDET.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/ACCDET.kl \
    $(LOCAL_PATH)/keylayout/mtk-kpd.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/mtk-kpd.kl

# Overlay
PRODUCT_PACKAGES += \
    DummyOverlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.secure_lock_screen.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.secure_lock_screen.xml

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext \
    mtk-telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

