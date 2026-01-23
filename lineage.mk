
# Release name
PRODUCT_RELEASE_NAME := zerofltedcm

TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Initialise device config
$(call inherit-product, device/samsung/zerofltedcm/full_zerofltedcm.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := zerofltedcm
PRODUCT_NAME := lineage_zerofltedcm
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SC-05G
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="zerofltedcm" \
    TARGET_DEVICE="zeroflte"

PRODUCT_NAME := lineage_zerofltedcm
PRODUCT_DEVICE := zerofltedcm

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT="samsung/SC-05G/SC-05G:7.0/NRD90M/SC05GOMU1CRI2:user/release-keys" PRIVATE_BUILD_DESC="zerofltedcm-user 7.0 NRD90M SC05GOMU1CRI2 release-keys"


