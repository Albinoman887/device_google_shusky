DEVICE_PACKAGE_OVERLAYS += device/google/shusky/husky/overlay-rising

TARGET_VENDOR_PROP += device/google/shusky/husky/vendor.prop

$(call inherit-product, device/google/shusky/device-rising.mk)
