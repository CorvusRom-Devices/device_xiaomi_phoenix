#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/phoenix/device.mk)

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

#Bootanimation
scr_resolution := 1080
TARGET_BOOT_ANIMATION_RES := 1080
IS_PHONE := true

# Gapps
TARGET_GAPPS_ARCH := arm64

# Faceunlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Inherit some common Corvus stuff.
$(call inherit-product, vendor/corvus/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := corvus_phoenix
PRODUCT_DEVICE := phoenix
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X2
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
