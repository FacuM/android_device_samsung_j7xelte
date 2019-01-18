#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit device configuration
$(call inherit-product, device/samsung/j7xelte/device.mk)

# Inherit from those products. Most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Gapps
TARGET_GAPPS_ARCH := arm
TARGET_DENSITY := xhdpi
TARGET_BOOT_ANIMATION_RES := 720
TARGET_MINIMAL_APPS := true

# Device identifier
PRODUCT_NAME := lineage_j7xelte
BOARD_VENDOR := samsung
PRODUCT_DEVICE := j7xelte
PRODUCT_BRAND := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung
PRODUCT_BUILD_PROP_OVERRIDES += \
        PRIVATE_BUILD_DESC="j7xeltexx-user 7.0 NRD90M J710FXXU4BRA1 release-keys"
        BUILD_FINGERPRINT=Xiaomi/sagit/sagit:7.1.1/NMF26X/V8.2.17.0.NCACNEC:user/release-keys
