DEVICE_PACKAGE_OVERLAYS += device/google/shusky/overlay-lineage

# Display
PRODUCT_COPY_FILES += \
    device/google/shusky/permissions/permissions_com.android.pixeldisplayservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/permissions_com.android.pixeldisplayservice.xml

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml \
    frameworks/native/data/etc/android.hardware.telephony.euicc.mep.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.mep.xml

PRODUCT_PACKAGES += \
    EuiccSupportPixelOverlay

# For Google Camera
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.aux.camera_oem_package=com.google.android.GoogleCamera \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

# Face Unlock
include vendor/google/faceunlock/device.mk

# GMS
WITH_GMS := true
PRODUCT_GMS_CLIENTID_BASE := android-google
TARGET_PREBUILT_PIXEL_LAUNCHER := true
# Rising testing flag for full p2023 experience
VENDOR_TEST_ENABLE_PIXEL_EXPERIENCE := true
# Ship pixel features (adaptivecharging, dreamliner etc)
TARGET_ENABLE_PIXEL_FEATURES := true
# Use google telephony framework
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_PREBUILT_SOUND_MODEL := true
TARGET_ENABLE_HOTWORD := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# RisingOS Specific flags
TARGET_ENABLE_CLEAR_CALLING := true

# Kernel
TARGET_PREBUILT_KERNEL := device/google/shusky-kernel/Image.lz4

# PowerShare
include hardware/google/pixel/powershare/device.mk

# wireless_charger HAL service
include device/google/gs-common/wireless_charger/wireless_charger.mk
