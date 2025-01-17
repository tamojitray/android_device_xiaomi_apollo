#
# Copyright (C) 2021 The ArrowOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from apollo device
$(call inherit-product, device/xiaomi/apollo/device.mk)

# Inherit some common ArrowOS stuff.
$(call inherit-product, vendor/arrow/config/common.mk)
$(call inherit-product-if-exists, vendor/lawnchair/lawnchair.mk)

TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
DEVICE_MAINTAINER := Dobsgw

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_NAME := arrow_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Mi 10T

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="apollo_global-user 11 RKQ1.200826.002 V12.5.5.0.RJDMIXM release-keys"

BUILD_FINGERPRINT := Redmi/apollo_global/apollo:11/RKQ1.200826.002/V12.5.5.0.RJDMIXM:user/release-keys
