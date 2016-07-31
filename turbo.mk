$(call inherit-product, device/samsung/i9500/full_i9500.mk)

# Enhanced NFC
$(call inherit-product, vendor/turbo/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/turbo/config/common_full_phone.mk)

# Gello
PRODUCT_PACKAGES += \
    Gello

PROUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=GT-I9500 \
    PRODUCT_NAME=ja3gxx \
    PRODUCT_DEVICE=ja3g \
    TARGET_DEVICE=ja3g \
    BUILD_FINGERPRINT="samsung/ja3gxx/ja3g:5.0.1/LRX22C/I9500XXUHOL1:user/release-keys" \
    PRIVATE_BUILD_DESC="ja3gxx-user 5.0.1 LRX22C I9500XXUHOL1 release-keys"

