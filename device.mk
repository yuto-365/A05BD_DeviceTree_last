#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#


PRODUCT_SHIPPING_API_LEVEL := 28


PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service \
    android.hardware.bluetooth@1.0-service-mediatek \
    android.hardware.light@2.0-service-mediatek \
    android.hardware.audio@4.0-service-mediatek \
    android.hardware.audio.effect@4.0-service-mediatek \


PRODUCT_ENFORCE_RRO_TARGETS := *


PRODUCT_CHARACTERISTICS := tablet

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.product=TAB-A05-BD \
    ro.product.board=TAB-A05-BD \
    ro.product.device=TAB-A05-BD \
    ro.product.locale=ja-JP \
    ro.build.system_root_image=true \
    persist.sys.locale=ja-JP \
    ro.treble.enabled=true \
    ro.build.characteristics=tablet \
    ro.product.first_api_level=28 \


PRODUCT_PACKAGES += \
    fstab.mt8168 \
    factory_init.connectivity.rc \
    factory_init.project.rc \
    factory_init.rc \
    init.ago.rc \
    init.connectivity.rc \
    init.modem.rc \
    init.mt8168.rc \
    init.mt8168.usb.rc \
    init.project.rc \
    init.sensor_1_0.rc \
    meta_init.connectivity.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    meta_init.rc \
    multi_init.rc \


PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)


$(call inherit-product, vendor/sts/a05bd/a05bd-vendor.mk)


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/factory_init.connectivity.rc:vendor/etc/init/hw/factory_init.connectivity.rc \
    $(LOCAL_PATH)/etc/factory_init.project.rc:vendor/etc/init/hw/factory_init.project.rc \
    $(LOCAL_PATH)/etc/factory_init.rc:vendor/etc/init/hw/factory_init.rc \
    $(LOCAL_PATH)/etc/init.ago.rc:vendor/etc/init/hw/init.ago.rc \
    $(LOCAL_PATH)/etc/init.connectivity.rc:vendor/etc/init/hw/init.connectivity.rc \
    $(LOCAL_PATH)/etc/init.modem.rc:vendor/etc/init/hw/init.modem.rc \
    $(LOCAL_PATH)/etc/init.mt8168.rc:vendor/etc/init/hw/init.mt8168.rc \
    $(LOCAL_PATH)/etc/init.mt8168.usb.rc:vendor/etc/init/hw/init.mt8168.usb.rc \
    $(LOCAL_PATH)/etc/init.project.rc:vendor/etc/init/hw/init.project.rc \
    $(LOCAL_PATH)/etc/init.sensor_1_0.rc:vendor/etc/init/hw/init.sensor_1_0.rc \
    $(LOCAL_PATH)/etc/meta_init.connectivity.rc:vendor/etc/init/hw/meta_init.connectivity.rc \
    $(LOCAL_PATH)/etc/meta_init.modem.rc:vendor/etc/init/hw/meta_init.modem.rc \
    $(LOCAL_PATH)/etc/meta_init.project.rc:vendor/etc/init/hw/meta_init.project.rc \
    $(LOCAL_PATH)/etc/meta_init.rc:vendor/etc/init/hw/meta_init.rc \
    $(LOCAL_PATH)/etc/multi_init.rc:vendor/etc/init/hw/multi_init.rc \
    $(LOCAL_PATH)/etc/fstab.mt8168:vendor/etc/fstab.mt8168 \
    $(LOCAL_PATH)/etc/ueventd.rc:vendor/ueventd.rc \
