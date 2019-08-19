USE_CAMERA_STUB := true

# inherit from the proprietary version
#-include vendor/samsung/baffinlite/BoardConfigVendor.mk

PRODUCT_NAME := omni_baffinlite
PRODUCT_DEVICE := baffinlite
BOARD_VENDOR := samsung

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := java
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_NEON := true

TARGET_BOOTLOADER_BOARD_NAME := java

BOARD_KERNEL_CMDLINE := enforcing=0 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x81e00000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_IMAGE_NAME := zImage
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1608334208
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5767168000
BOARD_CACHEIMAGE_PARTITION_SIZE := 1308622848
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

BOARD_SUPPRESS_EMMC_WIPE := true

# Kernel
TARGET_KERNEL_CONFIG := twrp_baffinlite_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/baffinlite
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

#fix fr the graphic glitch
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_FLIPPED_SCREEN := true

# libwvm.so
#COMMON_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL

BOARD_HAVE_BLUETOOTH := false

# SkTextBox for libtvout
BOARD_USES_SKTEXTBOX := true

# Resolution
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# OMX
BOARD_HAVE_CODEC_SUPPORT := SAMSUNG_CODEC_SUPPORT
BOARD_NONBLOCK_MODE_PROCESS := true
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USES_MFC_FPS := true

# Hardware rendering
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/baffinlite/configs/egl.cfg
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
#COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS -DEGL_NEEDS_FNW -DSAMSUNG_CODEC_SUPPORT -DJAVA_HWC
TARGET_USES_ION := true
HWUI_COMPILE_FOR_PERF := true

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/baffinlite/ril/

# Recovery
RECOVERY_VARIANT := twrp
TARGET_RECOVERY_FSTAB := device/samsung/baffinlite/rootdir/fstab.java_ss_baffinlite
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"

# healthd
#BOARD_HAL_STATIC_LIBRARIES := libhealthd.java
# ^ tmp fix for issue #2

# Compat
TARGET_USES_LOGD := false

# jemalloc causes a lot of random crash on free()
MALLOC_SVELTE := true

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/baffinlite/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    property_contexts \
    service_contexts \
    bkmgrd.te \
    device.te \
    geomagneticd.te \
    gpsd.te \
    init.te \
    immvibed.te \
    kernel.te \
    macloader.te \
    rild.te \
    shell.te \
    system_app.te \
    system_server.te \
    tvserver.te \
    vclmk.te \

TW_THEME := portrait_mdpi

# TWRP
DEVICE_RESOLUTION := 480x800
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
HAVE_SELINUX := true
BOARD_SUPPRESS_SECURE_ERASE := true
TW_INCLUDE_JB_CRYPTO := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_CPU_TEMP := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
