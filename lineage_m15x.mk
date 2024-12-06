# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from m15x device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := m15x
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_m15x
PRODUCT_MODEL := SM-E156B

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := m15x
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="m15xnndxx-user 14 UP1A.231005.007 E156BXXS3AXIJ release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/m15xnndxx/m15x:13/TP1A.220624.014/E156BXXS3AXIJ:user/release-keys
