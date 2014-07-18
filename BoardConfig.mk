USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/lgl34c/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
#TARGET_BOARD_PLATFORM := msm8610
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
ARCH_ARM_HAVE_TLS_REGISTER := true

DEVICE_RESOLUTION := 320x480

TARGET_BOOTLOADER_BOARD_NAME := lgl34c

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=w3c user_debug=31 msm_rtb.filter=0x37 androidboot.selinux=permissive lge.signed_image=false
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
#BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0xFF200100

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672 #22m (mmcblk0p16)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23068672 #22m (mmcblk0p17)
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1283457024 #1.2g (mmcblk0p32)

BOARD_USERDATAIMAGE_PARTITION_SIZE := 1924661248 #1.8g (mmcblk0p34)
BOARD_FLASH_BLOCK_SIZE := 131072

# recovery
TARGET_RECOVERY_INITRC := device/lge/lgl34c/recovery/recovery.rc
TARGET_RECOVERY_FSTAB := device/lge/lgl34c/recovery/fstab.lgl34c
RECOVERY_FSTAB_VERSION := 2

TARGET_PREBUILT_KERNEL := device/lge/lgl34c/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
