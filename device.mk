#
# Copyright (C) 2021 The ArrowOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8250-common
$(call inherit-product, device/xiaomi/sm8250-common/kona.mk)

PRODUCT_SHIPPING_API_LEVEL := 29

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-arrow

PRODUCT_PACKAGES += \
    NotchBarKiller

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Audio configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# Camera
PRODUCT_PACKAGES += \
    CutoutRingServiceApollo

# Inherit from firmware repo
$(call inherit-product, vendor/xiaomi-firmware/apollo/firmware.mk)

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/apollo/apollo-vendor.mk)
