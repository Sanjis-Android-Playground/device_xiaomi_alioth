#!/bin/bash

base64 -d device/xiaomi/alioth/configs/camera/secret > device/xiaomi/alioth/configs/camera/st_license.lic

git clone git@github.com:Sanjis-Android-Playground/device_xiaomi_sm8250-common.git device/xiaomi/sm8250-common
git clone git@github.com:Sanjis-Android-Playground/kernel_sm8250-16.1.0.git --depth=1 kernel/xiaomi/sm8250
cd kernel/xiaomi/sm8250
git submodule init
git submodule update
cd ../../../
rm -rf system/extras/su
git clone git@github.com:Sanjis-Android-Playground/vendor_xiaomi_sm8250-common.git vendor/xiaomi/sm8250-common
git clone git@github.com:Sanjis-Android-Playground/vendor_xiaomi_alioth.git vendor/xiaomi/alioth
git clone https://github.com/Roynas-Android-Playground/hardware_samsung-extra_interfaces.git hardware/samsung-ext/interfaces
#rm -rf hardware/xiaomi
git clone git@github.com:Sanjis-Android-Playground/hardware_xiaomi.git hardware/xiaomi
git clone https://gitlab.com/johnmart19/vendor_xiaomi_camera.git vendor/xiaomi/camera
#rm -rf packages/resources/devicesettings
git clone git@github.com:Sanjis-Android-Playground/packages_resources_devicesettings.git packages/resources/devicesettings
git clone https://gitlab.com/crdroidandroid/android_prebuilts_clang_host_linux-x86_clang-r547379.git prebuilts/clang/host/linux-x86/clang-r547379

