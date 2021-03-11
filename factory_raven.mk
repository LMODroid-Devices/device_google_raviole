#
# Copyright 2020 The Android Open-Source Project
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

$(call inherit-product, device/google/gs101/factory_common.mk)
$(call inherit-product, device/google/raviole/device-raven.mk)
include device/google/raviole/audio/raven/factory-audio-tables.mk

PRODUCT_NAME := factory_raven
PRODUCT_DEVICE := raven
PRODUCT_MODEL := Factory build on Raven
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := Google

# default BDADDR for EVB only
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.bluetooth.evb_bdaddr="22:22:22:33:44:55"

# Fingerprint
include device/google/gs101/fingerprint/udfps_factory.mk

# Factory binaries of camera
PRODUCT_PACKAGES += fatp_gn1_hat_tool fatp_imx586_hat_tool