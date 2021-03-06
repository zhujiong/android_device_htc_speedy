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

DEVICE=speedy

mkdir -p ../../../vendor/htc/$DEVICE/proprietary

adb pull /system/bin/akmd ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/awb_camera ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/bma150_usr ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/htc_ebdlogd ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/logcat2 ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/lsc_camera ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/rmt_storage ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/AdieHWCodec.csv ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/AudioBTID.csv ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libaudio.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libaudioalsa.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libaudioeq.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libcamera.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libgemini.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libhtc_acoustic.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libhtc_ril.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libgps.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libmmipl.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libmmjpeg.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/liboemcamera.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libposteffect.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/wimaxDumpKmsg ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/apph ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/wimaxDumpLogcat ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/setWiMAXPropDaemond ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/wimax_mtd ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/wimax_uart ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/sequansd ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/getWiMAXPropDaemond ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/wimaxDumpLastKmsg ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/wimaxDhcpRenew ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/wimaxDhcpRelease ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/wimaxAddRoute ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/spkamp ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/wimaxConfigInterface ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/TPA2051_CFG.csv ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/wimax/sequansd/DefaultTree.xml ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/wimax/sequansd/sequansd_app.xml ../../../vendor/htc/$DEVICE/proprietary

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/htc/$DEVICE/$DEVICE-vendor-blobs.mk
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

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/libcamera.so:obj/lib/libcamera.so \\
    vendor/htc/__DEVICE__/proprietary/libaudio.so:obj/lib/libaudio.so \\
    vendor/htc/__DEVICE__/proprietary/libaudioalsa.so:obj/lib/libaudioalsa.so

# All the blobs necessary for speedy
PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/AdieHWCodec.csv:/system/etc/AdieHWCodec.csv \\
    vendor/htc/__DEVICE__/proprietary/akmd:/system/bin/akmd \\
    vendor/htc/__DEVICE__/proprietary/AudioBTID.csv:/system/etc/AudioBTID.csv \\
    vendor/htc/__DEVICE__/proprietary/awb_camera:/system/bin/awb_camera \\
    vendor/htc/__DEVICE__/proprietary/bma150_usr:/system/bin/bma150_usr \\
    vendor/htc/__DEVICE__/proprietary/htc_ebdlogd:/system/bin/htc_ebdlogd \\
    vendor/htc/__DEVICE__/proprietary/libaudio.so:/system/lib/libaudio.so \\
    vendor/htc/__DEVICE__/proprietary/libaudioalsa.so:/system/lib/libaudioalsa.so \\
    vendor/htc/__DEVICE__/proprietary/libaudioeq.so:/system/lib/libaudioeq.so \\
    vendor/htc/__DEVICE__/proprietary/libcamera.so:/system/lib/libcamera.so \\
    vendor/htc/__DEVICE__/proprietary/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libgemini.so:/system/lib/libgemini.so \\
    vendor/htc/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libgsl.so:/system/lib/libgsl.so \\
    vendor/htc/__DEVICE__/proprietary/libhtc_acoustic.so:/system/lib/libhtc_acoustic.so \\
    vendor/htc/__DEVICE__/proprietary/libhtc_ril.so:/system/lib/libhtc_ril.so \\
    vendor/htc/__DEVICE__/proprietary/libmmipl.so:/system/lib/libmmipl.so \\
    vendor/htc/__DEVICE__/proprietary/libmmjpeg.so:/system/lib/libmmjpeg.so \\
    vendor/htc/__DEVICE__/proprietary/liboemcamera.so:/system/lib/liboemcamera.so \\
    vendor/htc/__DEVICE__/proprietary/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/logcat2:/system/bin/logcat2 \\
    vendor/htc/__DEVICE__/proprietary/lsc_camera:/system/bin/lsc_camera \\
    vendor/htc/__DEVICE__/proprietary/rmt_storage:/system/bin/rmt_storage \\
    vendor/htc/__DEVICE__/proprietary/wimaxDumpKmsg:/system/bin/wimaxDumpKmsg \\
    vendor/htc/__DEVICE__/proprietary/apph:/system/bin/apph \\
    vendor/htc/__DEVICE__/proprietary/wimaxDumpLogcat:/system/bin/wimaxDumpLogcat \\
    vendor/htc/__DEVICE__/proprietary/setWiMAXPropDaemond:/system/bin/setWiMAXPropDaemond \\
    vendor/htc/__DEVICE__/proprietary/wimax_mtd:/system/bin/wimax_mtd \\
    vendor/htc/__DEVICE__/proprietary/wimax_uart:/system/bin/wimax_uart \\
    vendor/htc/__DEVICE__/proprietary/sequansd:/system/bin/sequansd \\
    vendor/htc/__DEVICE__/proprietary/getWiMAXPropDaemond:/system/bin/getWiMAXPropDaemond \\
    vendor/htc/__DEVICE__/proprietary/wimaxDumpLastKmsg:/system/bin/wimaxDumpLastKmsg \\
    vendor/htc/__DEVICE__/proprietary/wimaxDhcpRenew:/system/bin/wimaxDhcpRenew \\
    vendor/htc/__DEVICE__/proprietary/wimaxDhcpRelease:/system/bin/wimaxDhcpRelease \\
    vendor/htc/__DEVICE__/proprietary/wimaxAddRoute:/system/bin/wimaxAddRoute \\
    vendor/htc/__DEVICE__/proprietary/wimaxConfigInterface:/system/bin/wimaxConfigInterface \\
    vendor/htc/__DEVICE__/proprietary/spkamp:/system/bin/spkamp \\
    vendor/htc/__DEVICE__/proprietary/DefaultTree.xml:/system/etc/wimax/sequansd/DefaultTree.xml \\
    vendor/htc/__DEVICE__/proprietary/sequansd_app.xml:/system/etc/wimax/sequansd/sequansd_app.xml \\
    vendor/htc/__DEVICE__/proprietary/wimaxDhcp.conf:/system/etc/wimax/dhcp/wimaxDhcp.conf \\
    vendor/htc/__DEVICE__/proprietary/TPA2051_CFG.csv:/system/etc/TPA2051_CFG.csv \\
    vendor/htc/__DEVICE__/proprietary/libposteffect.so:/system/lib/libposteffect.so \\
    vendor/htc/__DEVICE__/proprietary/ip:/system/bin/ip \\
    vendor/htc/__DEVICE__/proprietary/wimax-api.jar:/system/framework/wimax-api.jar
EOF

./setup-makefiles.sh
