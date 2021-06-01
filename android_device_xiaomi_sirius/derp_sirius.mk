#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/sirius/device.mk)

# Inherit some common Derp stuff.
WITH_GAPPS := true
$(call inherit-product, vendor/derp/config/common_full_phone.mk)
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
GAPPS_VARIANT := stock

# Unofficial-ify
DERP_BUILDTYPE := Unofficial
DERP_BUILD_ZIP_TYPE := GAPPS

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := derp_sirius
PRODUCT_DEVICE := sirius
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8 SE
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Xiaomi/sirius/sirius:8.1.0/OPM1.171019.019/V9.5.6.0.OEBCNFA:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sirius-user 8.1.0 OPM1.171019.019 V9.5.6.0.OEBCNFA release-keys" \
    PRODUCT_NAME="sirius"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
