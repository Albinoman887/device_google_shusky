DEVICE_PACKAGE_OVERLAYS += device/google/shusky/overlay-pixeldust

LOCAL_KERNEL := true

# Camera
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.aux.camera_oem_package=com.google.android.GoogleCamera \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

# EUICC
PRODUCT_PACKAGES += \
    EuiccSupportPixelOverlay

# Face Unlock
include vendor/google/faceunlock/device.mk

# GMS
WITH_GMS := true
PRODUCT_GMS_CLIENTID_BASE := android-google

# Kernel
TARGET_PREBUILT_KERNEL := device/google/shusky-kernel/Image.lz4

# Properties
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.pixeldust.maintainer="Albinoman887"

# Tensor overlay
$(call inherit-product, vendor/pixeldust/configs/pixel_overlay.mk)