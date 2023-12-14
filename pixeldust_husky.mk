# Inherit some common PixelDust stuff.
$(call inherit-product, vendor/pixeldust/build/product/pixeldust_product.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/google/zuma/pixeldust_common.mk)
$(call inherit-product, device/google/shusky/husky/device-pixeldust.mk)
$(call inherit-product, device/google/shusky/aosp_husky.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/pixeldust/configs/telephony.mk)

# Release name
export TARGET_DEVICE=husky

# Bootanimation
BOOTANIMATION := 1440

## Device identifier. This must come after all inclusions
PRODUCT_NAME := pixeldust_husky
PRODUCT_DEVICE := husky
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=husky \
    PRIVATE_BUILD_DESC="husky-user 14 UD1A.231205.015 11084887 release-keys"

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGEPRINT)

PRODUCT_RESTRICT_VENDOR_FILES := false
