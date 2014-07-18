$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/lgl34c/lgl34c-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/lgl34c/overlay

LOCAL_PATH := device/lge/lgl34c
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_PROPERTY_OVERIDES += \
    ro.secure=0 \
    ro.debuggable=1 \
    persist.service.adb.enable=1
    
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
    
# Recovery

PRODUCT_COPY_FILES += \
     $(LOCAL_PATH):/recovery/ueventd.lgl34c.rc:root/ueventd.lgl34c.rc \
     device/lge/lgl34c/recovery/fstab.lgl34c:root/recovery/etc/twrp.fstab \
     device/lge/lgl34c/recovery/fstab.lgl34c:root/fstab.lgl34c
#    device/lge/lgl34c/recovery/init.lgl34c.rc:root/init.lgl34c 

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_lgl34c
PRODUCT_DEVICE := lgl34c
