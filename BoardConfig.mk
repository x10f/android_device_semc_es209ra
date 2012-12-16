-include vendor/semc/es209ra/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true

TARGET_KERNEL_SOURCE := kernel/semc/qsd8k
TARGET_KERNEL_CONFIG := cmx10_es209ra_defconfig
TARGET_PREBUILT_KERNEL := device/semc/es209ra/prebuilt/kernel
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

TARGET_BOOTLOADER_BOARD_NAME := es209ra
TARGET_SPECIFIC_HEADER_PATH := device/semc/es209ra/include

TARGET_BOARD_PLATFORM := qsd8k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
ARCH_ARM_HAVE_ARMV7A_BUG := true
ARCH_ARM_HAVE_NEON := true

BOARD_USES_GENERIC_AUDIO := false

# Sensors
SOMC_CFG_DASH_INCLUDED := yes
SENSORS_COMPASS_AK8973 := true
SENSORS_ACCEL_BMA150_INPUT := true
SENSORS_ACCEL_BMA250_INPUT := false
SENSORS_PROXIMITY_APDS9700 := true
SENSORS_PRESSURE_BMP180 := false

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
WIFI_DRIVER_MODULE_PATH     := "/modules/ar6000.ko"
WIFI_DRIVER_MODULE_NAME     := ar6000

#Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_CUSTOM_HCIATTACH := true

#QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DBINDER_COMPAT -DANCIENT_GL
COMMON_GLOBAL_CFLAGS += -DQCOM_LEGACY_OMX
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
TARGET_HAVE_BYPASS := false
TARGET_GRALLOC_USES_ASHMEM := true
TARGET_USES_GENLOCK := true
#TARGET_USES_C2D_COMPOSITION := true

#Legacy stuff
BOARD_USES_LEGACY_OVERLAY := true
BOARD_USES_LEGACY_RIL := true
BORAD_USES_LEGACY_CAMERA := true

#Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

#Graphics
BOARD_EGL_CFG := device/semc/msm7x30-common/prebuilt/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_NO_HW_VSYNC := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT -DQCOM_NO_SECURE_PLAYBACK -DUSES_LEGACY_EGL


#GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 1240
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := es209ra
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

BOARD_EGL_CFG := device/semc/es209ra/prebuilt/egl.cfg

BOARD_CUSTOM_BOOTIMG_MK := device/semc/es209ra/custombootimg.mk
TARGET_RECOVERY_PRE_COMMAND := "touch /cache/recovery/boot;sync;"

#Recovery
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_RECOVERY_CHARGEMODE := false
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/semc/es209ra/recovery/recovery_keys.c
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"
BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p1

BOARD_KERNEL_CMDLINE := console=null
BOARD_KERNEL_BASE := 0x20000000

# A custom ota package maker for a device without a boot partition
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/semc/es209ra/releasetools/semc_ota_from_target_files

TARGET_BOOTANIMATION_PRELOAD := true

TARGET_OTA_ASSERT_DEVICE := X10i,X10a,es209ra,X10
