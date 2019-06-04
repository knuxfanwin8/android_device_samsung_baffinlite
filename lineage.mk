# Release name
PRODUCT_RELEASE_NAME := GalaxyGrandNeo

# Inherit some common CM stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/baffinlite/lineage_baffinlite.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := baffinlite
PRODUCT_NAME := lineage_baffinlite
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I9060

