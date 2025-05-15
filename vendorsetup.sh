#!/bin/bash

base64 -d device/xiaomi/alioth/configs/camera/secret > device/xiaomi/alioth/configs/camera/st_license.lic

git clone https://github.com/Sanjis-Android-Playground/device_xiaomi_sm8250-common.git -b 15-qpr2 device/xiaomi/sm8250-common
git clone https://github.com/Sanjis-Android-Playground/kernel_sm8250-16.1.0.git --depth=1 kernel/xiaomi/sm8250
cd kernel/xiaomi/sm8250
git submodule init
git submodule update
cd ../../../
rm -rf system/extras/su
git clone https://github.com/Sanjis-Android-Playground/vendor_xiaomi_sm8250-common.git -b 15-qpr2 vendor/xiaomi/sm8250-common
git clone https://github.com/Sanjis-Android-Playground/vendor_xiaomi_alioth.git -b 15-qpr2 vendor/xiaomi/alioth
git clone https://github.com/Roynas-Android-Playground/hardware_samsung-extra_interfaces.git hardware/samsung-ext/interfaces
rm -rf hardware/xiaomi
git clone https://github.com/Sanjis-Android-Playground/hardware_xiaomi.git -b 15-qpr2 hardware/xiaomi
git clone https://gitlab.com/johnmart19/vendor_xiaomi_camera.git vendor/xiaomi/camera
rm -rf packages/resources/devicesettings
git clone https://github.com/Sanjis-Android-Playground/packages_resources_devicesettings.git packages/resources/devicesettings
rm -rf system/libhwbinder
git clone https://github.com/Project-Flare-Staging/system_libhwbinder.git system/libhwbinder
