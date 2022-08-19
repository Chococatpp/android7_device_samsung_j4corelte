#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
 
$(call inherit-product, device/samsung/j2y18lte/full_j2y18lte.mk)
 
# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
 
PRODUCT_NAME := lineage_j2y18lte
BOARD_VENDOR := Samsung
 
PRODUCT_GMS_CLIENTID_BASE := android-samsung
 
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=samsung/j2y18ltejx/j2y18lte:7.1.1/NMF26X/J250FXXU2ASK1:user/release-keys \
PRIVATE_BUILD_DESC="j2y18ltejx-user 7.1.1 NMF26X J250FXXU2ASK1 release-keys"