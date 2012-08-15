#
# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# Set this up here so that BoardVendorConfig.mk can override it




# Use the non-open-source parts, if they're present
-include vendor/samsung/totoro/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := bcm21553
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOOTLOADER_BOARD_NAME := totoro

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true



#ics stuff
BOARD_USE_LEGACY_TOUCHSCREEN := true


# Audio
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true


# RIL
BOARD_PROVIDES_LIBRIL := true

BOARD_USES_LIBSECRIL_STUB := true

#camera
USE_CAMERA_STUB := true
BOARD_V4L2_DEVICE := /dev/video2
BOARD_CAMERA_DEVICE := /dev/video0
BOARD_USE_JPEG := true
#BOARD_USE_CAF_LIBCAMERA_GB_REL := true

#3D
BOARD_EGL_CFG := device/samsung/totoro/prebuilt/lib/egl/egl.cfg
TARGET_FORCE_CPU_UPLOAD := true
USE_OPENGL_RENDERER := true
BOARD_NO_RGBX_8888 := true
BOARD_USE_SCREENCAP := true



BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0"


# Device related defines
BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_KERNEL_BASE := 0x81600000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_PAGE_SIZE := 0x00001000
BOARD_KERNEL_CMDLINE := 

# Recovery

TARGET_PREBUILT_KERNEL := device/samsung/totoro/kernel
BOARD_BML_RECOVERY := /dev/block/bml8
TARGET_BOOTLOADER_BOARD_NAME := totoro
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_LDPI_RECOVERY := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 241172480
BOARD_USERDATAIMAGE_PARTITION_SIZE := 206831616
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_RECOVERY_INITRC := device/samsung/totoro/recovery.rc
#TARGET_KERNEL_SOURCE := kernel/samsung/gy/common
#TARGET_KERNEL_CONFIG := bcm21553_totoro_05_defconfig



# Browser / Stagefright
JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true
TARGET_WEBKIT_USE_MORE_MEMORY := true
ENABLE_JSC_JIT := true


#usb
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/lm-2/gadget/lun0/file"


# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4330_b1
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_STA_PATH := "/system/etc/wifi/bcm4330_sta.bin"
WIFI_DRIVER_FW_AP_PATH := "/system/etc/wifi/bcm4330_aps.bin"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wifi/bcm4330_sta.bin nvram_path=/system/etc/wifi/nvram.txt dhd_watchdog_ms=10 dhd_poll=1"
WIFI_DRIVER_MODULE_NAME := "dhd"

# Bluetooth
#BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_BCM := true
#BOARD_FORCE_STATIC_A2DP := true


