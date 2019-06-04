# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from baffinlite device
$(call inherit-product, device/samsung/baffinlite/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := baffinlite
PRODUCT_NAME := full_baffinlite
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I9060
