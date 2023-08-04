#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

DEVICE=sapphire

mkdir -p ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/akmd ../../../vendor/htc/$DEVICE/proprietary/akmd
chmod 755 ../../../vendor/htc/$DEVICE/proprietary/akmd
adb pull /system/etc/01_qcomm_omx.cfg ../../../vendor/htc/$DEVICE/proprietary/01_qcomm_omx.cfg
adb pull /system/etc/AudioFilter.csv ../../../vendor/htc/$DEVICE/proprietary/AudioFilter.csv
adb pull /system/etc/AudioPara4.csv ../../../vendor/htc/$DEVICE/proprietary/AudioPara4.csv
adb pull /system/etc/AudioPreProcess.csv ../../../vendor/htc/$DEVICE/proprietary/AudioPreProcess.csv
adb pull /system/etc/firmware/brf6300.bin ../../../vendor/htc/$DEVICE/proprietary/brf6300.bin
adb pull /system/etc/wifi/Fw1251r1c.bin ../../../vendor/htc/$DEVICE/proprietary/Fw1251r1c.bin
adb pull /system/lib/egl/libGLES_qcom.so ../../../vendor/htc/$DEVICE/proprietary/libGLES_qcom.so
adb pull /system/lib/libaudioeq.so ../../../vendor/htc/$DEVICE/proprietary/libaudioeq.so
adb pull /system/lib/libcamera.so ../../../vendor/htc/$DEVICE/proprietary/libcamera.so
adb pull /system/lib/libgps.so ../../../vendor/htc/$DEVICE/proprietary/libgps.so
adb pull /system/lib/libhtc_acoustic.so ../../../vendor/htc/$DEVICE/proprietary/libhtc_acoustic.so
adb pull /system/lib/libhtc_ril.so ../../../vendor/htc/$DEVICE/proprietary/libhtc_ril.so
adb pull /system/lib/libmm-adspsvc.so ../../../vendor/htc/$DEVICE/proprietary/libmm-adspsvc.so
adb pull /system/lib/liboemcamera.so ../../../vendor/htc/$DEVICE/proprietary/liboemcamera.so
adb pull /system/lib/libOmxCore.so ../../../vendor/htc/$DEVICE/proprietary/libOmxCore.so
adb pull /system/lib/libOmxH264Dec.so ../../../vendor/htc/$DEVICE/proprietary/libOmxH264Dec.so
adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/htc/$DEVICE/proprietary/libOmxMpeg4Dec.so
adb pull /system/lib/libOmxVidEnc.so ../../../vendor/htc/$DEVICE/proprietary/libOmxVidEnc.so
adb pull /system/lib/libopencorehw.so ../../../vendor/htc/$DEVICE/proprietary/libopencorehw.so
adb pull /system/lib/libqcomm_omx.so ../../../vendor/htc/$DEVICE/proprietary/libqcomm_omx.so
adb pull /system/lib/libstagefrighthw.so ../../../vendor/htc/$DEVICE/proprietary/libstagefrighthw.so

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/htc/$DEVICE/device_$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/htc/__DEVICE__/extract-files.sh

PRODUCT_COPY_FILES := \\
    vendor/htc/__DEVICE__/proprietary/libgps.so:obj/lib/libgps.so \\
    vendor/htc/__DEVICE__/proprietary/libcamera.so:obj/lib/libcamera.so

PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/akmd:system/bin/akmd \\
    vendor/htc/__DEVICE__/proprietary/01_qcomm_omx.cfg:system/etc/01_qcomm_omx.cfg \\
    vendor/htc/__DEVICE__/proprietary/AudioFilter.csv:system/etc/AudioFilter.csv \\
    vendor/htc/__DEVICE__/proprietary/AudioPara4.csv:system/etc/AudioPara4.csv \\
    vendor/htc/__DEVICE__/proprietary/AudioPreProcess.csv:system/etc/AudioPreProcess.csv \\
    vendor/htc/__DEVICE__/proprietary/brf6300.bin:system/etc/firmware/brf6300.bin \\
    vendor/htc/__DEVICE__/proprietary/Fw1251r1c.bin:system/etc/wifi/Fw1251r1c.bin \\
    vendor/htc/__DEVICE__/proprietary/libGLES_qcom.so:system/lib/egl/libGLES_qcom.so \\
    vendor/htc/__DEVICE__/proprietary/libaudioeq.so:system/lib/libaudioeq.so \\
    vendor/htc/__DEVICE__/proprietary/libcamera.so:system/lib/libcamera.so \\
    vendor/htc/__DEVICE__/proprietary/libgps.so:system/lib/libgps.so \\
    vendor/htc/__DEVICE__/proprietary/libhtc_acoustic.so:system/lib/libhtc_acoustic.so \\
    vendor/htc/__DEVICE__/proprietary/libhtc_ril.so:system/lib/libhtc_ril.so \\
    vendor/htc/__DEVICE__/proprietary/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    vendor/htc/__DEVICE__/proprietary/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxCore.so:system/lib/libOmxCore.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \\
    vendor/htc/__DEVICE__/proprietary/libopencorehw.so:system/lib/libopencorehw.so \\
    vendor/htc/__DEVICE__/proprietary/libqcomm_omx.so:system/lib/libqcomm_omx.so \\
    vendor/htc/__DEVICE__/proprietary/libstagefrighthw.so:system/lib/libstagefrighthw.so
EOF

./setup-makefiles.sh