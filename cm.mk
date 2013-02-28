# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := r950

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/r950/full_r950.mk)

#### Goo Manager support
## If EOS_RELEASE is not defined by the user, assume the build is a nightly release.
## If EOS_RELEASE is defined, use the environment variable EOS_RELEASE_GOOBUILD as the build number.

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=na7q \

ifeq ($(EOS_RELEASE),)
	PRODUCT_PROPERTY_OVERRIDES += \
	ro.goo.rom=cm101 \
	ro.goo.version=$(shell date +%y%m%d)
else
	PRODUCT_PROPERTY_OVERRIDES += \
	ro.goo.rom=cm101 \
	ro.goo.version=$(EOS_RELEASE_GOOBUILD)
endif

### OTA Update Center Properties

PRODUCT_PROPERTY_OVERRIDES += \
    otaupdater.otaid=CM10.1 \

ifeq ($(EOS_RELEASE),)
	PRODUCT_PROPERTY_OVERRIDES += \
	otaupdater.otatime=2013 \
	otaupdater.otaver=$(shell date +%y%m%d)
else
	PRODUCT_PROPERTY_OVERRIDES += \
	otaupdater.otatime=2013 \
	otaupdater.otaver=$(EOS_RELEASE_GOOBUILD)
endif

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := r950
PRODUCT_NAME := cm_r950
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SCH-R950
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0lteusc TARGET_DEVICE=t0ltecdma BUILD_FINGERPRINT="samsung/t0lteusc/t0lteusc:4.1.1/JRO03C/R950VXALL1:user/release-keys" PRIVATE_BUILD_DESC="t0lteusc-user 4.1.1 JRO03C R950VXALL1 release-keys"
