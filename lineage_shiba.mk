# Inherit some common stuff.
$(call inherit-product, vendor/lineage/config/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/zuma/lineage_common.mk)
$(call inherit-product, device/google/shusky/shiba/device-lineage.mk)
$(call inherit-product, device/google/shusky/aosp_shiba.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_shiba
PRODUCT_MODEL := Pixel 8
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=shiba \
    PRIVATE_BUILD_DESC="shiba-user 14 UD1A.231105.004 11010374 release-keys"

BUILD_FINGERPRINT := google/shiba/shiba:14/UD1A.231105.004/11010374:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false
