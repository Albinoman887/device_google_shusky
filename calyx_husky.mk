# Inherit some common stuff.
$(call inherit-product, vendor/rising/config/rising.mk)

# Inherit device configuration
$(call inherit-product, device/google/zuma/rising_common.mk)
$(call inherit-product, device/google/shusky/husky/device-rising.mk)
$(call inherit-product, device/google/shusky/aosp_husky.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := rising_husky
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_BRAND := google
PRODUCT_DEVICE := husky
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
    PRIVATE_BUILD_DESC="husky-user 14 UD1A.230803.041 10808477 release-keys"

BUILD_FINGERPRINT := google/husky/husky:14/UD1A.230803.041/10808477:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/husky/husky-vendor.mk)
