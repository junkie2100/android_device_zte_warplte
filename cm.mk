# Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := zte_warplte

TARGET_BOOTANIMATION_NAME := vertical-540x960

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/warplte/device_warplte.mk)

# Device naming
PRODUCT_DEVICE := warplte
PRODUCT_NAME := cm_warplte
PRODUCT_BRAND := zte
PRODUCT_MODEL := N9510
PRODUCT_MANUFACTURER := ZTE

CDMA_CARRIER_ALPHA := Sprint
CDMA_CARRIER_NUMERIC := 310120

PRODUCT_PROPERTY_OVERRIDES += \
    ro.cdma.home.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    ro.cdma.home.operator.numeric=$(CDMA_CARRIER_NUMERIC)

# Set build fingerprint / ID / Product Name ect.
#PRODUCT_BUILD_PROP_OVERRIDES += \
#    BUILD_FINGERPRINT="lge/l1m_MPCS_US/l1m:4.0.4/IMM76L/MS87010a.1357114310:user/release-keys" \
#    PRIVATE_BUILD_DESC="l1m_MPCS_US-user 4.0.4 IMM76L MS87010a.1357114310 release-keys"
