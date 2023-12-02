# Inherit some common stuff.
$(call inherit-product, vendor/rising/config/rising.mk)

# Inherit device configuration
$(call inherit-product, device/google/zuma/lineage-common.mk)
$(call inherit-product, device/google/shusky/husky/device-lineage.mk)
$(call inherit-product, device/google/shusky/aosp_husky.mk)

# Rising specifics
RISING_MAINTAINER := Albinoman887
RISING_CHIPSET := Tensor
RISING_STORAGE := 128gb
RISING_RAM := 12gb
RISING_BATTERY := 5000mah
RISING_DISPLAY := 3200×1440

## Device identifier. This must come after all inclusions
PRODUCT_NAME := rising_husky
PRODUCT_DEVICE := husky
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=husky \
    PRIVATE_BUILD_DESC="husky-user 14 UD1A.231105.004 11010374 release-keys"

BUILD_FINGERPRINT := google/husky/husky:14/UD1A.231105.004/11010374:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false
