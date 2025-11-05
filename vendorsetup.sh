#!/bin/bash

base64 -d device/xiaomi/alioth/configs/camera/secret > device/xiaomi/alioth/configs/camera/st_license.lic

git clone https://github.com/Sanjis-Android-Playground/device_xiaomi_sm8250-common.git -b 16 device/xiaomi/sm8250-common
git clone https://github.com/Sanjis-Android-Playground/kernel_sm8250.git -b bpf --depth=1 kernel/xiaomi/sm8250
cd kernel/xiaomi/sm8250
git submodule init
git submodule update
cd ../../../
rm -rf system/extras/su
git clone https://github.com/Sanjis-Android-Playground/vendor_xiaomi_alioth.git -b 16 vendor/xiaomi/alioth ;
git clone https://github.com/Sanjis-Android-Playground/vendor_xiaomi_sm8250-common.git -b 16  vendor/xiaomi/sm8250-common 
rm -rf hardware/xiaomi
git clone https://github.com/Sanjis-Android-Playground/hardware_xiaomi.git -b aosp-16 hardware/xiaomi
git clone https://gitlab.com/crdroidandroid/android_prebuilts_clang_host_linux-x86_clang-r547379.git prebuilts/clang/host/linux-x86/clang-r547379
