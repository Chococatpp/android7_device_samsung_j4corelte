#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from j4corelte device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := j2y18lte
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_j2y18lte
PRODUCT_MODEL := Galaxy J250F

TARGET_BOOT_ANIMATION_RES := 540

TARGET_GAPPS_ARCH := arm

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := j2y18lte
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="j2y18ltejx-user 7.1.1 NMF26X J250FXXU2ASK1 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ2A.210305.006/7119741:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/redfin/redfin:11/RQ2A.210305.006/7119741:user/release-keys 
