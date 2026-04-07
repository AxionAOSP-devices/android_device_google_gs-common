#
# Copyright (C) 2021 The Android Open-Source Project
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

PRODUCT_SOONG_NAMESPACES += \
	device/google/gs-common/ax

-include vendor/google/camera/config.mk

HBM_SUPPORTED := true
HBM_NODE := /sys/class/backlight/panel0-backlight/hbm_mode
TORCH_STR_SUPPORTED := true
TARGET_DISABLES_LIBPERF := true
TARGET_NEEDS_DOZE_FIX := true
TARGET_ENABLES_IMS_OVERRIDES := true
TARGET_TOUCH_BOOST_SUPPORTED := true
TARGET_INCLUDE_AXFX := true
TARGET_PREBUILT_GOOGLE_CAMERA  := true
TARGET_DOZE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_PICKUP_PULSE_SUPPORTED := true

# frameworks/opt/net/ims/src/java/com/android/ims/ImsManager.java
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1

# external/ims/rcs/presencepolling/src/com/android/service/ims/presence/PollingService.java
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rcs.supported=1

BOARD_KERNEL_CMDLINE += irqaffinity=0-1 rcu_nocbs=0-7 cgroup.memory=nokmem,nosocket no-steal-acc can.stats_timer=0 kasan=off
