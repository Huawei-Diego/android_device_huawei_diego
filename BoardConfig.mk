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

DEVICE_PATH := device/huawei/diego

# inherit from common msm8937-common
-include device/huawei/msm8937-common/BoardConfigCommon.mk

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
BOARD_QTI_CAMERA_32BIT_ONLY := true
TARGET_USES_MEDIA_EXTENSIONS := true
TARGET_USES_QTI_CAMERA_DEVICE := true
# TARGET_TS_MAKEUP := true

# Kernel
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CLANG_VERSION := $(shell sh -c "find prebuilts/clang/host/linux-x86/ -type f -name clang -printf \"%T@ %Tc %p\n\" | sort -n | tail -n1 | sed 's/.*clang-\(.*\)\/bin.*/\1/'")
TARGET_KERNEL_CONFIG := diego_defconfig

# Init
TARGET_INIT_VENDOR_LIB         := libinit_diego
TARGET_PLATFORM_DEVICE_BASE    := /devices/soc/
TARGET_RECOVERY_DEVICE_MODULES := libinit_diego

# Security patch level
VENDOR_SECURITY_PATCH := 2018-8-01

# SELinux
BOARD_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy
SELINUX_IGNORE_NEVERALLOWS := true

# Shims
TARGET_LD_SHIM_LIBS := \
    /system/vendor/lib/libhwlog.so|libshim_cutils.so \
    /system/vendor/lib64/libhwlog.so|libshim_cutils.so \
    /system/vendor/lib/libmmcamera_ppeiscore.so|/system/lib/libshim_camera.so

# Inherit the proprietary files
include vendor/huawei/diego/BoardConfigVendor.mk
