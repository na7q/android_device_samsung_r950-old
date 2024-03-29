#
# Copyright (C) 2012 The CyanogenMod Project
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
#

LOCAL_PATH := device/samsung/r950

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.smdk4x12:root/fstab.smdk4x12

# OTA Updater
#PRODUCT_COPY_FILES += \
#    device/samsung/r950/app/OTAUpdater-1.0.5.apk:system/app/OTAUpdater-1.0.5.apk

# Include common makefile
$(call inherit-product, device/samsung/t0ltecdma/t0ltecdma.mk)

$(call inherit-product-if-exists, vendor/samsung/r950/r950-vendor.mk)
