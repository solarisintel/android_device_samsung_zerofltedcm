
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

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths_0.xml:system/etc/mixer_paths_0.xml
    
# Inherit from zero-common
$(call inherit-product, device/samsung/zero-common/zero-common.mk)

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/etc/gps.conf:/system/etc/gps.conf \
    $(LOCAL_PATH)/gps/etc/sap.conf:/system/etc/sap.conf
   
# vendor files sc05g
$(call inherit-product, vendor/samsung/zerofltedcm/zerofltedcm-vendor.mk)

# Include debugging props
$(call inherit-product, device/samsung/zerofltedcm/system_prop_debug.mk)
    
# RIL  
PRODUCT_PROPERTY_OVERRIDES += \
    mobiledata.interfaces=pdp0,gprs,ppp0,rmnet0,rmnet1
