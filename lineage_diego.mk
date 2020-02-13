#
# Copyright (C) 2018 The LineageOS Project
#
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from diego device
$(call inherit-product, device/huawei/diego/device.mk)

PRODUCT_BRAND := Huawei
PRODUCT_MODEL := Honor 6C
PRODUCT_DEVICE := diego
PRODUCT_MANUFACTURER := Huawei
PRODUCT_NAME := lineage_diego

PRODUCT_GMS_CLIENTID_BASE := android-huawei

TARGET_VENDOR_PRODUCT_NAME := diego

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="diego-user 7.1.2 N2G47H V9.5.10.0.NAMMIFD release-keys"

<<<<<<< HEAD:lineage_santoni.mk
BUILD_FINGERPRINT := Xiaomi/santoni/santoni:7.1.2/N2G47H/V9.5.10.0.NAMMIFD:user/release-keys

=======
BUILD_FINGERPRINT := Huawei/diego/diego:7.1.2/N2G47H/V9.5.10.0.NAMMIFD:user/release-keys
>>>>>>> 4cd631f... diego: rename santoni to diego:lineage_diego.mk
