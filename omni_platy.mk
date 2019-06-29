#
# Copyright (C) 2019 The Android Open-Source Project
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

# Release name
PRODUCT_RELEASE_NAME := platy

LOCAL_PATH := device/zte/platy

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(LOCAL_PATH)/device.mk)
 
include $(call all-subdir-makefiles)

# Release name
PRODUCT_RELEASE_NAME := platy

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := platy
PRODUCT_NAME := omni_platy
PRODUCT_BRAND := zte
PRODUCT_MODEL := Quartz
PRODUCT_MANUFACTURER := ZTE

# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.product=platy \
    ro.product.device=platy
