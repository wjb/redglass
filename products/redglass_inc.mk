# Inherit cyanogenmod configurations
$(call inherit-product, vendor/cyanogen/products/cyanogen_inc.mk)

# Red Glass build time theming vendor setup
# Add Red Glass Overrides
PRODUCT_NAME := redglass_inc

# Reorder Product Overlays to properly include theme specific stuff before
# anything else
PRODUCT_PACKAGE_OVERLAYS := vendor/redglass/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/passion

PRODUCT_COPY_FILES +=  \
    vendor/redglass/prebuilt/common/bin/setdefcols.sh:system/bin/setdefcols.sh \
    vendor/redglass/proprietary/ThemeDefaults.apk:system/app/ThemeDefaults.apk
