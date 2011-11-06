#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE=u8510
MANUFACTURER=huawei

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE


(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# All the blobs necessary for u8510 devices
PRODUCT_COPY_FILES := \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \\


PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libgsl.so:system/lib/libgsl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \\

PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/qmuxd:system/bin/qmuxd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/akmd8962:system/bin/akmd8962 \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/akmd8975:system/bin/akmd8975 \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/compassd:system/bin/compassd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdiag.so:system/lib/libdiag.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcm.so:system/lib/libcm.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libqmi.so:system/lib/libqmi.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdsm.so:system/lib/libdsm.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libqueue.so:system/lib/libqueue.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdll.so:system/lib/libdll.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libwms.so:system/lib/libwms.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libnv.so:system/lib/libnv.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdss.so:system/lib/libdss.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libauth.so:system/lib/libauth.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/gps.default.so:system/lib/hw/gps.default.so \\

# Camera
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcamera.so:system/lib/libcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liboemcamera.so:obj/lib/liboemcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcameraservice.so:system/lib/libcameraservice.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcamera_client.so:system/lib/libcamera_client.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmm-adspsvc.so:/system/lib/libmm-adspsvc.so \\

# OMX
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAacDec.so:/system/lib/libOmxAacDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxWmvDec.so:/system/lib/libOmxWmvDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAdpcmDec.so:/system/lib/libOmxAdpcmDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxH264Dec.so:/system/lib/libOmxH264Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrDec.so:/system/lib/libOmxAmrDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrwbDec.so:/system/lib/libOmxAmrwbDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxWmaDec.so:/system/lib/libOmxWmaDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxMp3Dec.so:/system/lib/libOmxMp3Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxMpeg4Dec.so:/system/lib/libOmxMpeg4Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrRtpDec.so:/system/lib/libOmxAmrRtpDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAacEnc.so:/system/lib/libOmxAacEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxEvrcEnc.so:/system/lib/libOmxEvrcEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrEnc.so:/system/lib/libOmxAmrEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxQcelp13Enc.so:/system/lib/libOmxQcelp13Enc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxVidEnc.so:/system/lib/libOmxVidEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so\\

# HW
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/lights.msm7k.so:system/lib/hw/lights.msm7k.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/copybit.msm7k.so:system/lib/hw/copybit.msm7k.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so \\

# vendor
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/oem_rpc_svc:system/bin/oem_rpc_svc \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/vold:system/bin/vold \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/modempre:system/bin/modempre \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liboem_rapi.so:/system/lib/liboem_rapi.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcommondefs.so:/system/lib/libcommondefs.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libloc_api-rpc-qc.so:/system/lib/libloc_api-rpc-qc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmmprocess.so:system/lib/libmmprocess.so\\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libhwrpc.so:system/lib/libhwrpc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libhwrpc.so:obj/lib/libhwrpc.so \\

# wifi
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/wpa_supplicant:system/bin/wpa_supplicant \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/wl:system/bin/wl \\

# bluetooth
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/port-bridge:system/bin/port-bridge \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/brcm_patchram_plus:system/bin/brcm_patchram_plus \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/bluetooth/BCM4329.hcd:system/etc/bluetooth/BCM4329.hcd \\

# ril
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libreference-ril.so:/system/lib/libreference-ril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libril.so:/system/lib/libril.so \\

EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/device_$DEVICE-vendor.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/__MANUFACTURER__/__DEVICE__/setup-makefiles.sh

# Live wallpaper packages
PRODUCT_PACKAGES := \\
     LiveWallpapers \\
     LiveWallpapersPicker \\
     MagicSmokeWallpapers \\
     VisualizationWallpapers \\
     librs_jni

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES := \\
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Pick up overlay for features that depend on non-open-source files
#DEVICE_PACKAGE_OVERLAYS := vendor/cnoverlay

\$(call inherit-product, vendor/__MANUFACTURER__/__DEVICE__/__DEVICE__-vendor-blobs.mk)
EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/BoardConfigVendor.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/__MANUFACTURER__/__DEVICE__/setup-makefiles.sh

BOARD_GPS_LIBRARIES := libloc_api

USE_CAMERA_STUB := true

EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/cyanogen/products/cyanogen_$DEVICE.mk

# Inherit AOSP device configuration for $DEVICE.
\$(call inherit-product, device/__MANUFACTURER__/__DEVICE__/device___DEVICE__.mk)

# Inherit some common cyanogenmod stuff.
\$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
\$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_u8510
PRODUCT_BRAND := Huawei
PRODUCT_DEVICE := hwu8510
PRODUCT_MODEL := U8510
PRODUCT_MANUFACTURER := HUAWEI
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE=hwu8510 PRODUCT_NAME=U8510 BUILD_ID=stone BUILD_DISPLAY_ID=stone-alpha_v1 BUILD_FINGERPRINT=Huawei/U8510/hwu8510:2.3.3/HuaweiU8510/C169B831:user/ota-rel-keys,release-keys


#
# Set ro.modversion
#

ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \\
        ro.modversion=CM7.1.0-__DEVICE__-Nightly\$(shell date +%m%d%Y)
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \\
            ro.modversion=CM-7.1.0-__DEVICE__
    else
        PRODUCT_PROPERTY_OVERRIDES += \\
            ro.modversion=CM7.1.0-KANG-__DEVICE__
    endif
endif

#
# Copy legend specific prebuilt files
#
# Lights and graphics
PRODUCT_COPY_FILES += \\
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip

EOF

grep "cyanogen_$DEVICE-eng" ../../../vendor/cyanogen/vendorsetup.sh > /dev/null
if [ $? -ne 0 ] 
  then
    echo "add_lunch_combo cyanogen_$DEVICE-eng" >> ../../../vendor/cyanogen/vendorsetup.sh
fi

grep cyanogen_$DEVICE.mk ../../../vendor/cyanogen/products/AndroidProducts.mk > /dev/null
if [ $? -ne 0 ]
  then
    echo "PRODUCT_MAKEFILES+=\$(LOCAL_DIR)/cyanogen_$DEVICE.mk" >> ../../../vendor/cyanogen/products/AndroidProducts.mk
fi

