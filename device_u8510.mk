DEVICE:=u8510
MANUFACTURER:=huawei

$(warning device_8510.mk will executet)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# proprietary side of the device
$(call inherit-product-if-exists, vendor/huawei/u8510/device_u8510-vendor.mk)

$(call inherit-product, build/target/product/full.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8510/overlay

#PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := huawei_u8510
PRODUCT_DEVICE := u8510
PRODUCT_MODEL := huawei_u8510
#PRODUCT_LOCALES := zh_CN zh_TW en_US

PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    librs_jni \
    Gallery3d \
    SpareParts \
    Term \
    libcamera \
    libOmxCore \
    libOmxVidEnc \
    dexpreopt \
    gps.u8510 \
    FM

DISABLE_DEXPREOPT := false

# Keylayouts
PRODUCT_COPY_FILES += \
    device/$(MANUFACTURER)/$(DEVICE)/usr/keychars/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \
    device/$(MANUFACTURER)/$(DEVICE)/usr/keychars/surf_keypad.kcm.bin:system/usr/keychars/synaptics.kcm.bin \
    device/$(MANUFACTURER)/$(DEVICE)/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/$(MANUFACTURER)/$(DEVICE)/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

# fstab
PRODUCT_COPY_FILES += \
    vendor/$(MANUFACTURER)/$(DEVICE)/proprietary/etc/vold.fstab:system/etc/vold.fstab

# bluetooth
PRODUCT_COPY_FILES += \
    device/$(MANUFACTURER)/$(DEVICE)/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh

# apns-conf.xml
PRODUCT_COPY_FILES += \
    vendor/$(MANUFACTURER)/$(DEVICE)/proprietary/etc/apns-conf.xml:system/etc/apns-conf.xml

PRODUCT_COPY_FILES += \
    device/$(MANUFACTURER)/$(DEVICE)/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Init
PRODUCT_COPY_FILES += \
    device/$(MANUFACTURER)/$(DEVICE)/root/init.huawei.rc:root/init.huawei.rc \
    device/$(MANUFACTURER)/$(DEVICE)/root/init.rc:root/init.rc \
    device/$(MANUFACTURER)/$(DEVICE)/root/ueventd.rc:root/ueventd.rc

# Audio
# write 0 in AutoVolumeControl.txt to disable AutoVolumeControl.txt
PRODUCT_COPY_FILES += \
    vendor/$(MANUFACTURER)/$(DEVICE)/proprietary/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/$(MANUFACTURER)/$(DEVICE)/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt 

#Media profile
PRODUCT_COPY_FILES += \
    vendor/$(MANUFACTURER)/$(DEVICE)/proprietary/etc/media_profiles.xml:system/etc/media_profiles.xml

# Wifi stuff
PRODUCT_COPY_FILES += \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/dhd.ko:system/wifi/dhd.ko \
    vendor/$(MANUFACTURER)/$(DEVICE)/proprietary/wifi/firmware.bin:system/wifi/firmware.bin \
    vendor/$(MANUFACTURER)/$(DEVICE)/proprietary/wifi/firmware_apsta.bin:system/wifi/firmware_apsta.bin \
    vendor/$(MANUFACTURER)/$(DEVICE)/proprietary/wifi/nvram.txt:system/wifi/nvram.txt \
    vendor/$(MANUFACTURER)/$(DEVICE)/proprietary/wifi/bcm_loadecho.sh:system/wifi/bcm_loadecho.sh \
    vendor/$(MANUFACTURER)/$(DEVICE)/proprietary/wifi/bcm_loadipf.sh:system/wifi/bcm_loadipf.sh \
    vendor/$(MANUFACTURER)/$(DEVICE)/proprietary/wifi/connectap.sh:system/wifi/connectap.sh \
    vendor/$(MANUFACTURER)/$(DEVICE)/proprietary/wifi/iwconfig:system/wifi/iwconfig \
    vendor/$(MANUFACTURER)/$(DEVICE)/proprietary/wifi/iwlist:system/wifi/iwlist \
    vendor/$(MANUFACTURER)/$(DEVICE)/proprietary/wifi/iwpriv:system/wifi/iwpriv \
    vendor/$(MANUFACTURER)/$(DEVICE)/proprietary/wifi/nvram.txt:system/wifi/nvram.txt \
    vendor/$(MANUFACTURER)/$(DEVICE)/proprietary/wifi/udp_server:system/wifi/udp_server \

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# C8800 uses mid-density artwork where available
PRODUCT_LOCALES += mdpi



#PRODUCT_PROPERTY_OVERRIDES := \
#    wifi.interface=eth0 \
#    wifi.supplicant_scan_interval=120 \
#    ro.sf.lcd_density=160 \
#    ro.com.android.dataroaming=false


PRODUCT_PROPERTY_OVERRIDES := \
    ro.config.notification_sound=OnTheHunt.ogg \
    ro.config.alarm_alert=Alarm_Classic.ogg \
    ro.setupwizard.mode=OPTIONAL \
    net.bt.name=Android \
    dalvik.vm.stack-trace-file=/data/anr/traces.txt \
    ro.config.hw_addsettingsdbex=1 \
    ro.config.fm_type=libbcmfm_if \
    ro.config.KeyPassToUser=true \
    ro.config.hwft_PinPukUnlockscr=true \
    keyguard.no_require_sim=true \
    ro.telephony.call_ring.multiple=false \
    ro.config.hw_power_saving=true \
    ro.config.hw_selectedLanguages=false \
    ro.config.smsCoding_National=3 \
    ro.config.hw_RemindWifiToPdp=false \
    ro.config.hw_proximitySensor=true \
    ro.config.xtra_support=true \
    ro.config.hw_quickpoweron=true \
    persist.sys.quickpoweron=normal \
    persist.sys.animationstart=false \
    ro.config.hw_poanimation=5000 \
    ro.config.hw_proximity=true \
    ro.config.hw_front_camera=true \
    ro.config.helix_enable=false \
    ro.config.do_sdcard_upgrade=true \
    ro.config.srs.equalizer=true \
    ro.config.srs.default.type=1 \
    ro.config.PopupTwink=true \
    ro.config.SetStatusbarText=true \
    ro.config.hw_isCustomize=true \
    ro.config.hw_customizeType=01 \
    ro.config.hw_virtualsdcard=true \
    ro.config.ringtone=Noises2.ogg \
    ro.config.hw_ascend_ringtone=false \
    ro.opengles.version=131072 \
    ro.config.ipcall=true \
    ro.config.hw_reject_message = true \
    ro.config.hw_toolbox=true \
    ro.config.hw_eapsim=true \
    hw_internal_sd=true \
    ro.poweroff_alarm=true \
    ro.config.hw_fast_dormancy=1 \
    ro.config.hw_camera_resize=false \
    ro.com.google.clientidbase=android-huawei \
    ro.com.google.clientidbase.yt=android-huawei \
    ro.com.google.clientidbase.am=android-huawei \
    ro.com.google.clientidbase.gmm=android-huawei \
    ro.com.google.clientidbase.ms=android-huawei \
    ro.config.hw_menu_unlockscreen=false \
    debug.sf.hw=1 \
    hw.sms.dellong.interval.time=172800000 \
    ro.config.hw_GSensorOptimize=true \
    ro.config.front_camera_zoom=true \
    ro.hw_oom_app=com.android.mms \
    ro.config.hw_uaprof=http://wap1.huawei.com/uaprof/HuaweiU8510WCDMA-NORMAL.xml \
    ro.config.hw_use_browser_ua=true \
    ro.config.hw_browser_ua3g=http://wap1.huawei.com/uaprof/HuaweiU8510WCDMA-NORMAL.xml \
    ro.config.hw_browser_ua2g=http://wap1.huawei.com/uaprof/HuaweiU8510GPRS-NORMAL.xml \
    ro.config.hw_set_default_home=true \
    ro.config.AM_PM_STYLE=1

#    persist.sys.powerup_reason=
#    persist.sys.user_set_airplane=

# Perfomance tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.execution-mode=int:jit \

# Don't put dexfiles in /cache
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1

$(warning device_8510.mk finished)

