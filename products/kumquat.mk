# Inherit AOSP device configuration for anzu
$(call inherit-product-if-exists, device/sony/kumquat/full_kumquat.mk)

# kumquat overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/kumquat

# Setup device specific product configuration.
PRODUCT_NAME := aokp_kumquat
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := kumquat
PRODUCT_MODEL := Xperia U
PRODUCT_MANUFACTURER := Sony

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ST25i_1262-1120 BUILD_FINGERPRINT=SEMC/ST25i_1262-1120/ST25i:4.0.4/6.1.1.B.1.10/9bt3zw:user/release-keys PRIVATE_BUILD_DESC="ST25i-user 4.0.4 6.1.1.B.1.10 9bt3zw test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy anzu specific prebuilt files
PRODUCT_PACKAGES += \
    bootanimation_480_854 \
    ThinkFree

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_480_854.zip:system/media/bootanimation.zip

# Hardware Info
PRODUCT_PROPERTY_OVERRIDES += \
    ro.device.cpu=St-Ericsson_Nova-Thor_U8500 \
    ro.device.front_cam=1.3MP \
    ro.device.gpu=Mali_400 \
    ro.device.rear_cam=8MP \
    ro.device.screen_res=480x854_Pixels
