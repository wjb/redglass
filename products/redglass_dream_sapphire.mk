# Inherit cyanogenmod configurations
$(call inherit-product, vendor/cyanogen/products/cyanogen_dream_sapphire.mk)

# Red Glass build time theming vendor setup
# Add Red Glass Overrides
PRODUCT_NAME := redglass_dream_sapphire

# Reorder Product Overlays to properly include theme specific stuff before
# anything else
PRODUCT_PACKAGE_OVERLAYS := vendor/redglass/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/dream_sapphire

PRODUCT_COPY_FILES +=  \
    vendor/redglass/prebuilt/common/bin/setdefcols.sh:system/bin/setdefcols.sh \
    vendor/redglass/proprietary/ThemeDefaults.apk:system/app/ThemeDefaults.apk
