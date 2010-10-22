# Inherit cyanogenmod configurations
$(call inherit-product, vendor/cyanogen/products/cyanogen_espresso.mk)

# Red Glass build time theming vendor setup
# Add Red Glass Overrides
PRODUCT_NAME := redglass_espresso

# Reorder Product Overlays to properly include theme specific stuff before
# anything else
PRODUCT_PACKAGE_OVERLAYS := vendor/redglass/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/espresso

PRODUCT_COPY_FILES +=  \
    vendor/redglass/prebuilt/common/bin/setdefcols.sh:system/bin/setdefcols.sh \
    vendor/redglass/proprietary/ThemeDefaults.apk:system/app/ThemeDefaults.apk
