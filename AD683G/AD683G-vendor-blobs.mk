# Copyright (C) 2014 The CyanogenMod Project
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

# binary
PRODUCT_PACKAGES += \
    memsicd \
    diag_atc \
    utpd \
    ftmdaemon \
    athtestcmd \
    artagent \
    diag_dci_client \
    diag_klog \
    diag_mdlog \
    diag_uart_log \
    fastTestUsingKernel \
    stop_mdlog

# binary
PRODUCT_PACKAGES += \
    efs_sync.sh \
    load_wifi_mod.sh \
    remove_wifi_mod.sh \
    test_bluetooth.sh \
    testmode.sh \
    wifitest_recv.sh \
    wifitest_send.sh

PRODUCT_PACKAGES += \
    libGoogleAnalyticsV2

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/hisense/AD683G/proprietary/system/lib,system/lib)
