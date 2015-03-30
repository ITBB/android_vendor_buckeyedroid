# Inherit AOSP device configuration for shamu.
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Inherit common product files.
$(call inherit-product, vendor/buckeyedroid/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := buckeyedroid_shamu
PRODUCT_BRAND := google
PRODUCT_DEVICE := shamu
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:5.1/LMY47E/1748839:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 5.1 LMY47E 1748839 release-keys"

#fmas n6 specific
    PRODUCT_PROPERTY_OVERRIDES += \
    fmas.spkr_6ch=35,20,110 \
    fmas.spkr_2ch=35,25 \
    fmas.spkr_angles=10 \
    fmas.spkr_sgain=0 \
    media.aac_51_output_enabled=true \
    persist.rcs.supported=0 \
    persist.radio.sib16_support=1 \
    drm.service.enabled=true \
    persist.audio.dualmic.config=endfire \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=false \
    persist.audio.fluence.speaker=false 

# Inherit media effect blobs
-include vendor/buckeyeddroid/products/common_media_effects.mk
