# Copyright (C) 2015 The CyanogenMod Project
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

# Inherit device configuration
$(call inherit-product, device/htc/glacier/glacier.mk)

# Inherit common CM configuration
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BOOTANIMATION := device/htc/msm7x30-common/media/bootanimation.zip

# Set build fingerprint / ID / Product Name ect.
PRODUCT_DEVICE := glacier
PRODUCT_BRAND := T-Mobile
PRODUCT_MODEL := myTouch 4G
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=htc_glacier \
    BUILD_FINGERPRINT="tmous/htc_glacier/glacier:$(PLATFORM_VERSION)/$(BUILD_ID)/$(shell date +%Y%m%d%H%M%S):$(TARGET_BUILD_VARIANT)/test-keys" \
    PRIVATE_BUILD_DESC="htc_glacier-$(TARGET_BUILD_VARIANT) $(PLATFORM_VERSION) $(BUILD_ID) $(shell date +%Y%m%d%H%M%S) test-keys"

# Release name
PRODUCT_NAME := cm_glacier
PRODUCT_RELEASE_NAME := glacier