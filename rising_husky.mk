#
# Copyright 2021 The Android Open-Source Project
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

TARGET_LINUX_KERNEL_VERSION := 5.15

USE_SWIFTSHADER := true
BOARD_USES_SWIFTSHADER := true

$(call inherit-product, device/google/zuma/aosp_common.mk)
$(call inherit-product, device/google/shusky/device-husky.mk)

# Inherit risingOS vendor stuffs
$(call inherit-product, vendor/rising/config/rising.mk)

# Device Identifiers
PRODUCT_NAME := rising_husky
PRODUCT_DEVICE := husky
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google
RISING_MAINTAINER := Albinoman887
RISING_CHIPSET := Tensor
RISING_STORAGE := 128gb
RISING_RAM := 12gb
RISING_BATTERY := 5000mah
RISING_DISPLAY := 3200×1440

# GMS
WITH_GMS := true
TARGET_PREBUILT_PIXEL_LAUNCHER := true
# Rising testing flag for full p2023 experience
VENDOR_TEST_ENABLE_PIXEL_EXPERIENCE := true
# Ship pixel features (adaptivecharging, dreamliner etc)
TARGET_ENABLE_PIXEL_FEATURES := true
# Use google telephony framework
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_PREBUILT_SOUND_MODEL := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=husky \
    PRIVATE_BUILD_DESC="husky-user 14 UD1A.230803.022.B1 10726908 release-keys"

BUILD_FINGERPRINT := google/husky/husky:14/UD1A.230803.022.B1/10726908:user/release-keys

DEVICE_MANIFEST_FILE := \
	device/google/shusky/manifest.xml
