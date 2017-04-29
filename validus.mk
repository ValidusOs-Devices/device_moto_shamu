# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common VALIDUS stuff.
$(call inherit-product, vendor/validus/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := validus_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6

TARGET_VENDOR := moto

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    DEVICE_MAINTAINERS="John Brewer(TheRingMaster)" \
    BUILD_FINGERPRINT=google/shamu/shamu:7.1.1/N6F26U/3687496:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 7.1.1 N6F26U 3687496 release-keys"
