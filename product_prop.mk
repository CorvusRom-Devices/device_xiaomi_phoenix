#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# ADB
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.usb.config=mtp,adb \
    ro.secure=0 \
    ro.adb.secure=0

# Audio
PRODUCT_PRODUCT_PROPERTIES += \
    ro.bluetooth.a2dp_offload.supported=false \
    persist.bluetooth.a2dp_offload.disabled=true \
    persist.bluetooth.bluetooth_audio_hal.disabled=true \
    vendor.audio.feature.a2dp_offload.enable=false \
    persist.vendor.qcom.bluetooth.enable.splita2dp=false \
    persist.vendor.bt.a2dp.aac_whitelist=false

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    persist.camera.gyro.disable=0 \
    persist.camera.privapp.list=org.codeaurora.snapcam,com.android.camera,org.lineageos.snap \
    persist.vendor.camera.privapp.list=org.codeaurora.snapcam,com.android.camera,org.lineageos.snap \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,org.lineageos.snap

# Telephony
PRODUCT_PRODUCT_PROPERTIES += \
    ro.telephony.default_network=22,22 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1

# Enable blurs
PRODUCT_PRODUCT_PROPERTIES += \
    ro.surface_flinger.supports_background_blur=1 \
    ro.sf.blurs_are_expensive=1 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.disable_backpressure=1

# Priv-app permission
PRODUCT_PRODUCT_PROPERTIES += \
    ro.control_privapp_permissions=log

# Netflix
ro.netflix.bsp_rev=Q6150-17263-1

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.fha_enable=true \
    ro.sys.fw.bg_apps_limit=32 \
    ro.config.dha_cached_max=16 \
    ro.config.dha_empty_max=42 \
    ro.config.dha_empty_init=32 \
    ro.config.dha_lmk_scale=0.545 \
    ro.config.dha_th_rate=2.3 \
    ro.config.sdha_apps_bg_max=64 \
    ro.config.sdha_apps_bg_min=8
