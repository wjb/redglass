# Inherit cyanogenmod configurations
$(call inherit-product, vendor/cyanogen/products/cyanogen_bravo.mk)

# Red Glass build time theming vendor setup
# Add Red Glass Overrides
PRODUCT_NAME := redglass_bravo

# Reorder Product Overlays to properly include theme specific stuff before
# anything else
PRODUCT_PACKAGE_OVERLAYS := vendor/redglass/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/bravo

PRODUCT_COPY_FILES +=  \
    vendor/redglass/prebuilt/common/bin/setdefcols.sh:system/bin/setdefcols.sh \
    vendor/redglass/proprietary/ThemeDefaults.apk:system/app/ThemeDefaults.apk
