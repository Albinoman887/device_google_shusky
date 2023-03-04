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
$(call inherit-product, device/google/shusky/sigma_husky.mk)


# Inherit risingOS vendor configs
$(call inherit-product, vendor/rising/config/rising.mk)

# Device Identifiers
PRODUCT_BRAND := google
PRODUCT_DEVICE := husky
PRODUCT_MANUFACTURER := Google
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_NAME := rising_husky

# RisingOS variables
RISING_MAINTAINER := Albinoman887
RISING_CHIPSET := ZUMA

# Gms variables
WITH_GMS := true

# Set Pixel launcher as default launcher
TARGET_PREBUILT_PIXEL_LAUNCHER := true

# Ship Pixel features (adaptivecharging, dreamliner etc)
TARGET_ENABLE_PIXEL_FEATURES := true

# Use Google telephony framework
TARGET_USE_GOOGLE_TELEPHONY := true

# Ship Google Camera
TARGET_PREBUILT_GOOGLE_CAMERA := true

# Use gs101 hotword blobs
TARGET_PREBUILT_HOTWORD := true
TARGET_PREBUILT_HOTWORD_TYPE := tensor_zuma

# Addons
TARGET_HAS_UDFPS := true

DEVICE_MANIFEST_FILE := \
	device/google/shusky/manifest.xml
