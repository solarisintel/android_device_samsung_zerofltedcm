#
# Copyright (C) 2015 The Android Open Kang Project
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

LOCAL_PATH := device/samsung/zerofltedcm

## device overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Properties
TARGET_SYSTEM_PROP += device/samsung/zerofltedcm/system.prop

# Vendor security patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lineage.build.vendor_security_patch=2017-12-01

# Inherit from universal7420-common
$(call inherit-product, device/samsung/universal7420-common/universal7420-common.mk)

# Also get non-open-source specific aspects if available
$(call inherit-product, vendor/samsung/zero-common/zero-common-vendor.mk)
$(call inherit-product, vendor/samsung/zerofltedcm/zerofltedcm-vendor.mk)

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/etc/gps.conf:/system/etc/gps.conf \
    $(LOCAL_PATH)/gps/etc/sap.conf:/system/etc/sap.conf

# adb debug
$(call inherit-product, device/samsung/zerofltedcm/system_prop_debug.mk)

# RIL  
PRODUCT_PROPERTY_OVERRIDES += \
    mobiledata.interfaces=pdp0,gprs,ppp0,rmnet0,rmnet1

