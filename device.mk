#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/j2y18lte

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage
    
PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# ANT
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.bluetooth.default \
    audio.primary.msm8937 \
    audio.r_submix.default \
    audio.usb.default \
    libaacwrapper \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing

PRODUCT_PACKAGES += \
    android.hardware.audio.service \
    android.hardware.audio@6.0-impl \
    android.hardware.audio.effect@2.0-service \
    android.hardware.audio.effect@6.0-impl \
    android.hardware.soundtrigger@2.2-impl
	
PRODUCT_PACKAGES += \
    android.hardware.bluetooth.audio@2.0-impl \
    vendor.qti.hardware.bluetooth_audio@2.0.vendor

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/audio/audio_effects_common.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_common.conf \
    $(LOCAL_PATH)/audio/audio_effects_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_sec.xml \
    $(LOCAL_PATH)/audio/audio_output_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_output_policy.conf \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_platform_info_extcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_extcodec.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_sec.xml \
    $(LOCAL_PATH)/audio/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer.txt \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/mixer_paths_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_mtp.xml \
    $(LOCAL_PATH)/audio/mixer_paths_qrd_sku1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_sku1.xml \
    $(LOCAL_PATH)/audio/mixer_paths_qrd_sku2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_sku2.xml \
    $(LOCAL_PATH)/audio/mixer_paths_qrd_skuh.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_skuh.xml \
    $(LOCAL_PATH)/audio/mixer_paths_qrd_skuhf.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_skuhf.xml \
    $(LOCAL_PATH)/audio/mixer_paths_qrd_skui.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_skui.xml \
    $(LOCAL_PATH)/audio/mixer_paths_qrd_skum.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_skum.xml \
    $(LOCAL_PATH)/audio/mixer_paths_qrd_skun.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_skun.xml \
    $(LOCAL_PATH)/audio/mixer_paths_sdm439_pm8953.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_sdm439_pm8953.xml \
    $(LOCAL_PATH)/audio/mixer_paths_skuk.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_skuk.xml \
    $(LOCAL_PATH)/audio/mixer_paths_wcd9306.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9306.xml \
    $(LOCAL_PATH)/audio/mixer_paths_wcd9326.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9326.xml \
    $(LOCAL_PATH)/audio/mixer_paths_wcd9330.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9330.xml \
    $(LOCAL_PATH)/audio/mixer_paths_wcd9335.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9335.xml \
    $(LOCAL_PATH)/audio/playback_record_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/playback_record_audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths_wcd9306.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9306.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths_wcd9330.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9330.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths_wcd9335.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9335.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml \
    $(LOCAL_PATH)/audio/tms_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/tms_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

# Bluetooth
PRODUCT_PACKAGES += \
    vendor.qti.hardware.bluetooth_dun@1.0.vendor \
    vendor.qti.hardware.btconfigstore@1.0.vendor \
    libbt-vendor

# Camera
PRODUCT_PACKAGES += \
    Snap
	
PRODUCT_PACKAGES += \
    libbase_shim
    
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.5-impl \
    android.hardware.camera.provider@2.5-service \
    android.hardware.camera.device@3.2 \
    android.hardware.camera.device@3.3 \
    android.hardware.camera.device@3.4 \
    android.hardware.camera.device@3.5 \
    android.hardware.camera.provider@2.5 \
    android.hardware.camera.provider@2.6 \
    vendor.qti.hardware.camera.device@1.0

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/camera/L16OL_s5k3p3sx_module_info.xml:system/etc/camera/L16OL_s5k3p3sx_module_info.xml \
    $(LOCAL_PATH)/camera/M05QS_imx241_module_info.xml:system/etc/camera/M05QS_imx241_module_info.xml \
    $(LOCAL_PATH)/camera/M16QL_s5k3p8sx_ak7372_module_info.xml:system/etc/camera/M16QL_s5k3p8sx_ak7372_module_info.xml \
    $(LOCAL_PATH)/camera/M16QL_s5k3p8sx_chromatix.xml:system/etc/camera/M16QL_s5k3p8sx_chromatix.xml \
    $(LOCAL_PATH)/camera/N05QL_s5k5e3yx_module_info.xml:system/etc/camera/N05QL_s5k5e3yx_module_info.xml \
    $(LOCAL_PATH)/camera/O16QL_s5k3p8sx_chromatix.xml:system/etc/camera/O16QL_s5k3p8sx_chromatix.xml \
    $(LOCAL_PATH)/camera/O16QL_s5k3p8sx_module_info.xml:system/etc/camera/O16QL_s5k3p8sx_module_info.xml \
    $(LOCAL_PATH)/camera/P08QL_s5k4h5yc_module_info.xml:system/etc/camera/P08QL_s5k4h5yc_module_info.xml \
    $(LOCAL_PATH)/camera/Q08QL_s5k4h5yc_module_info.xml:system/etc/camera/Q08QL_s5k4h5yc_module_info.xml \
    $(LOCAL_PATH)/camera/R08QS_imx219_module_info.xml:system/etc/camera/R08QS_imx219_module_info.xml \
    $(LOCAL_PATH)/camera/U13OL_s5k3l2xx_module_info.xml:system/etc/camera/U13OL_s5k3l2xx_module_info.xml \
    $(LOCAL_PATH)/camera/W13QS_imx258_module_info.xml:system/etc/camera/W13QS_imx258_module_info.xml \
    $(LOCAL_PATH)/camera/Y08QF_sr846_chromatix.xml:system/etc/camera/Y08QF_sr846_chromatix.xml \
    $(LOCAL_PATH)/camera/Y08QF_sr846_module_info.xml:system/etc/camera/Y08QF_sr846_module_info.xml \
    $(LOCAL_PATH)/camera/Y13QL_s5k3l2xx_chromatix.xml:system/etc/camera/Y13QL_s5k3l2xx_chromatix.xml \
    $(LOCAL_PATH)/camera/imx214_chromatix.xml:system/etc/camera/imx214_chromatix.xml \
    $(LOCAL_PATH)/camera/imx219_chromatix.xml:system/etc/camera/imx219_chromatix.xml \
    $(LOCAL_PATH)/camera/imx219_elite_chromatix.xml:system/etc/camera/imx219_elite_chromatix.xml \
    $(LOCAL_PATH)/camera/imx230_chromatix.xml:system/etc/camera/imx230_chromatix.xml \
    $(LOCAL_PATH)/camera/imx241_chromatix.xml:system/etc/camera/imx241_chromatix.xml \
    $(LOCAL_PATH)/camera/imx258_chromatix.xml:system/etc/camera/imx258_chromatix.xml \
    $(LOCAL_PATH)/camera/msm8917_camera_j2y18.xml:system/etc/camera/msm8917_camera_j2y18.xml \
    $(LOCAL_PATH)/camera/msm8952_camera.xml:system/etc/camera/msm8952_camera.xml \
    $(LOCAL_PATH)/camera/msm8996_camera.xml:system/etc/camera/msm8996_camera.xml \
    $(LOCAL_PATH)/camera/ov13850_chromatix.xml:system/etc/camera/ov13850_chromatix.xml \
    $(LOCAL_PATH)/camera/ov13850_q13v06k_chromatix.xml:system/etc/camera/ov13850_q13v06k_chromatix.xml \
    $(LOCAL_PATH)/camera/ov4688_chromatix.xml:system/etc/camera/ov4688_chromatix.xml \
    $(LOCAL_PATH)/camera/ov5670_chromatix.xml:system/etc/camera/ov5670_chromatix.xml \
    $(LOCAL_PATH)/camera/ov8858_chromatix.xml:system/etc/camera/ov8858_chromatix.xml \
    $(LOCAL_PATH)/camera/ov8865_chromatix.xml:system/etc/camera/ov8865_chromatix.xml \
    $(LOCAL_PATH)/camera/s5k3l2xx_chromatix.xml:system/etc/camera/s5k3l2xx_chromatix.xml \
    $(LOCAL_PATH)/camera/s5k3m2xm_chromatix.xml:system/etc/camera/s5k3m2xm_chromatix.xml \
    $(LOCAL_PATH)/camera/s5k3m2xx_chromatix.xml:system/etc/camera/s5k3m2xx_chromatix.xml \
    $(LOCAL_PATH)/camera/s5k3p3sx_i16ql_chromatix.xml:system/etc/camera/s5k3p3sx_i16ql_chromatix.xml \
    $(LOCAL_PATH)/camera/s5k4h5yc_chromatix.xml:system/etc/camera/s5k4h5yc_chromatix.xml \
    $(LOCAL_PATH)/camera/s5k4h5yc_dw9807_chromatix.xml:system/etc/camera/s5k4h5yc_dw9807_chromatix.xml \
    $(LOCAL_PATH)/camera/s5k4h5yc_dw9807_chromatix_gta2s.xml:system/etc/camera/s5k4h5yc_dw9807_chromatix_gta2s.xml \
    $(LOCAL_PATH)/camera/s5k5e3yx_chromatix.xml:system/etc/camera/s5k5e3yx_chromatix.xml \
    $(LOCAL_PATH)/camera/s5k5e3yx_f2_2_chromatix.xml:system/etc/camera/s5k5e3yx_f2_2_chromatix.xml \
    $(LOCAL_PATH)/camera/s5k5e3yx_f2_2_chromatix_j3y17.xml:system/etc/camera/s5k5e3yx_f2_2_chromatix_j3y17.xml \
    $(LOCAL_PATH)/camera/sr259_chromatix.xml:system/etc/camera/sr259_chromatix.xml \
    $(LOCAL_PATH)/camera/sr846_chromatix.xml:system/etc/camera/sr846_chromatix.xml
    
# Configstore
PRODUCT_PACKAGES += \
    vendor.qti.hardware.capabilityconfigstore@1.0.vendor \
    android.hardware.configstore@1.1-service

# Display
PRODUCT_PACKAGES += \
    gralloc.msm8937

PRODUCT_PACKAGES += \
    Msm8917Doze \
    AdvancedDisplay \
    hwcomposer.msm8937 \
    memtrack.msm8937 \
    libdisplayconfig \
    libqdMetaData.system \
    libqservice \
    libtinyxml

PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl-2.1 \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.3-service.clearkey
    
# FM
PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio
    
# Fwk-detect
PRODUCT_PACKAGES += \
    libqti_vndfwk_detect \
    libqti_vndfwk_detect.vendor \
    libvndfwk_detect_jni.qti \
    libvndfwk_detect_jni.qti.vendor

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/apdr.conf:$(TARGET_COPY_OUT_VENDOR)/etc/apdr.conf \
    $(LOCAL_PATH)/gps/flp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/flp.conf \
    $(LOCAL_PATH)/gps/gps.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gps.conf \
    $(LOCAL_PATH)/gps/izat.conf:$(TARGET_COPY_OUT_VENDOR)/etc/izat.conf \
    $(LOCAL_PATH)/gps/lowi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/lowi.conf \
    $(LOCAL_PATH)/gps/sap.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sap.conf
    
PRODUCT_PACKAGES += \
    android.hardware.gnss@2.0-impl

PRODUCT_PACKAGES += \
    libwifi-hal-ctrl

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# IPA Manager
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml

# IRQ
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config \
    $(LOCAL_PATH)/configs/sec_config_oem:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config_oem

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/ft5x06_ts.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/ft5x06_ts.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/synaptics_rmi4_i2c.kl \
    $(LOCAL_PATH)/keylayout/synaptics_dsx.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/synaptics_dsx.kl

# Lights
PRODUCT_PACKAGES += \
    lights.msm8937 \
    android.hardware.light@2.0-impl \
    android.hardware.light@2.0-service

PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# Do not generate libartd.
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/media/media_codecs_8937_v1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_8937_v1.xml \
    $(LOCAL_PATH)/media/media_codecs_8956.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_8956.xml \
    $(LOCAL_PATH)/media/media_codecs_ac4.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_ac4.xml \
    $(LOCAL_PATH)/media/media_codecs_ddp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_ddp.xml \
    $(LOCAL_PATH)/media/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml \
    $(LOCAL_PATH)/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/media/media_codecs_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor.xml \
    $(LOCAL_PATH)/media/media_codecs_vendor_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_audio.xml \
    $(LOCAL_PATH)/media/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \
    $(LOCAL_PATH)/media/media_profiles_8956.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_8956.xml \
    $(LOCAL_PATH)/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    $(LOCAL_PATH)/media/media_profiles_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_vendor.xml

# OMX
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libc2dcolorconvert \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Permissions
PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.freeform_window_management.xml \

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service-qti \
    vendor.qti.hardware.perf@2.0 \
    vendor.qti.hardware.perf@2.0.vendor

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/powerhint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.xml

# Public Libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt
    
# QMI
PRODUCT_PACKAGES += \
    libjson

# Ramdisk
PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qcom.coex.sh \
    init.qcom.crashdata.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.post_boot.sh \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.can.sh \
    init.qti.fm.sh \
    init.qti.qseecomd.sh \
    qca6234-service.sh \
    init.carrier.rc \
    init.msm.usb.configfs.rc \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.samsung.rc \
    init.target.rc \
    init.bloatware.rc \
    init.wifi.rc \
    fstab.qcom \
    ueventd.qcom.rc \
    init.msm8917.rc
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl
    
# RIL
PRODUCT_PACKAGES += \
    vendor.samsung.hardware.radio@1.2.vendor \
    android.hardware.radio.config@1.0 \
    libjson \
    librmnetctl \
    libxml2 \
    libprotobuf-cpp-full \
    libshims_ril

# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor_sec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor_sec.policy
	
# Soong
PRODUCT_SOONG_NAMESPACES += \
    device/samsung/j2y18lte
    
# Telephony
PRODUCT_PACKAGES += \
    telephony-ext
    
# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@1.0-service
    
# Treble
PRODUCT_USE_VNDK_OVERRIDE := false
PRODUCT_SHIPPING_API_LEVEL := 27
PRODUCT_VENDOR_MOVE_ENABLED := true

# USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic
    
# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service
    
# Crypto
PRODUCT_PACKAGES += \
    vendor.qti.hardware.cryptfshw@1.0.vendor

PRODUCT_PACKAGES += \
    vendor.qti.hardware.cryptfshw@1.0-service-qti.qsee

# VNDK
PRODUCT_PACKAGES += \
    libstdc++.vendor

# Wifi
PRODUCT_PACKAGES += \
    libcld80211 \
    libwpa_client \
    hostapd \
    macloader \
    wificond \
    libwifi-hal-qcom \
    wcnss_service  \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    vendor.qti.hardware.wifi.hostapd@1.0.vendor \
    vendor.qti.hardware.wifi.supplicant@2.0.vendor

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/indoorchannel.info:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/indoorchannel.info \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \

# Prebuilt Packages
PRODUCT_PACKAGES += \
    Via \
    GCamGo

# Preopt
PRODUCT_DEXPREOPT_SPEED_APPS += \
    Settings \
    Snap \
    SystemUI \
    TrebuchetQuickSteps

# Do not spin up a separate process for the network stack on go devices, use an in-process APK.
PRODUCT_PACKAGES += InProcessNetworkStack
PRODUCT_PACKAGES += CellBroadcastAppPlatform
PRODUCT_PACKAGES += CellBroadcastServiceModulePlatform
PRODUCT_PACKAGES += com.android.tethering.inprocess

# Strip the local variable table and the local variable type table to reduce
# the size of the system image. This has no bearing on stack traces, but will
# leave less information available via JDWP.
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true

# Always preopt extracted APKs to prevent extracting out of the APK for gms
# modules.
PRODUCT_ALWAYS_PREOPT_EXTRACTED_APK := true

# Speed profile services and wifi-service to reduce RAM and storage.
PRODUCT_SYSTEM_SERVER_COMPILER_FILTER := speed-profile

# Inherit vendor
$(call inherit-product, vendor/samsung/j2y18lte/j2y18lte-vendor.mk)
