#
# Copyright (C) 2018 The Android Open-Source Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AEX stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Inherit from nokia sdm660-common
$(call inherit-product, device/nokia/sdm660-common/sdm660.mk)

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Include Bootanimation configuration
TARGET_BOOT_ANIMATION_RES :=1080

PRODUCT_NAME := aosp_PL2
PRODUCT_DEVICE := PL2
PRODUCT_MANUFACTURER := FIH
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 6.1

PRODUCT_GMS_CLIENTID_BASE := android-hmd

TARGET_VENDOR_PRODUCT_NAME := PL2
TARGET_VENDOR_DEVICE_NAME := PL2

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=PL2 \
    PRODUCT_NAME=PL2 \
    PRIVATE_BUILD_DESC="Plate2_00WW-user 9 PPR1.180610.011 00WW_3_260 release-keys"

BUILD_FINGERPRINT := Nokia/Plate2_00WW/PL2_sprout:9/PPR1.180610.011/00WW_3_260:user/release-keys

# GAPPS
ifeq ($(CURRENT_BUILD_TYPE), gapps)
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
TARGET_SHIPS_SEPERATE_GAPPS_BUILD := true
endif
