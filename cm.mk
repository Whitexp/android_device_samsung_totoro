# Boot Animation
TARGET_SCREEN_HEIGHT := 320
TARGET_SCREEN_WIDTH := 240

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)


#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/totoro/device_totoro.mk)

# Include FM-Radio stuff
#$(call inherit-product, vendor/cm/products/bcm_fm_radio.mk)

PRODUCT_NAME := cm_totoro
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := totoro
PRODUCT_MODEL := GT-S5360
PRODUCT_MANUFACTURER := Samsung
PRODUCT_CHARACTERISTICS := phone

# Device identifier. This must come after all inclusions
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=totoro \
    BUILD_FINGERPRINT="samsung/totoro/totoro:2.3.7/GRI40/19C11F164C:user/release-keys" \
    PRIVATE_BUILD_DESC="totoro-user 2.3.7 GRI40 19C11F164C release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := Totoro
PRODUCT_VERSION_DEVICE_SPECIFIC :=
