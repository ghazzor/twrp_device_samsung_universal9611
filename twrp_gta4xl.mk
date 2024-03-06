# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Include any options that can't be included in BoardConfig.mk
$(call inherit-product, device/samsung/universal9611/gta4xl/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := twrp_gta4xl
PRODUCT_DEVICE := gta4xl
PRODUCT_MODEL := SM-P615
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
