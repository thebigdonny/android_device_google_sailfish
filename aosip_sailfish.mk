# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit AOSiP product configuration
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Inherit aosp_sailfish
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)

-include device/google/marlin/sailfish/device-aosip.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosip_sailfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sailfish \
    BUILD_FINGERPRINT=google/sailfish/sailfish:7.1.2/NJH47F/4146041:user/release-keys \
    PRIVATE_BUILD_DESC="sailfish-user 7.1.2 NJH47F 4146041 release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += DEVICE_MAINTAINERS="Tyler (thebigdonny)"

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
