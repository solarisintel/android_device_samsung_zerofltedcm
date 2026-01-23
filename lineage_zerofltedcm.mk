# Copyright (C) 2013-2016 The CyanogenMod Project
# Copyright (C) 2017-2019 The LineageOS Project
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
# This file is the build configuration for a full Android
# build for zeroltedcm hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and zeroltedcm, hence its name.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from zerofltedcm device
$(call inherit-product, device/samsung/zerofltedcm/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := lineage_zerofltedcm
PRODUCT_DEVICE := zerofltedcm
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SC-05G

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=zerofltedcm \
    TARGET_DEVICE=zerofltedcm \
    PRIVATE_BUILD_DESC="zerofltedcm-user 7.0 NRD90M SC05GOMU1CRI2 release-keys"

BUILD_FINGERPRINT := "samsung/SC-05G/SC-05G:7.0/NRD90M/SC05GOMU1CRI2:user/release-keys"

