# Inherit some common PixelDust stuff.
$(call inherit-product, vendor/pixeldust/build/product/pixeldust_product.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/google/zuma/pixeldust_common.mk)
$(call inherit-product, device/google/shusky/shiba/device-pixeldust.mk)
$(call inherit-product, device/google/shusky/aosp_shiba.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/pixeldust/configs/telephony.mk)

# Release name
export TARGET_DEVICE=shiba

# Bootanimation
BOOTANIMATION := 1080

## Device identifier. This must come after all inclusions
PRODUCT_NAME := pixeldust_shiba
PRODUCT_DEVICE := shiba
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=shiba \
    PRIVATE_BUILD_DESC="shiba-user 14 UD1A.230803.041 10808477 release-keys"

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGEPRINT)

PRODUCT_RESTRICT_VENDOR_FILES := false
