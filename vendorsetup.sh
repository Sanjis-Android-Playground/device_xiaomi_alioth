#!/bin/bash

base64 -d device/xiaomi/alioth/configs/camera/secret > device/xiaomi/alioth/configs/camera/st_license.lic

# Clone kernel_xiaomi_sm8250
if [ ! -d "kernel/xiaomi/sm8250" ]; then
    git clone https://github.com/Sanjis-Android-Playground/android_kernel_xiaomi_sm8250.git kernel/xiaomi/sm8250 -b main-bpf --depth=1
fi
cd kernel/xiaomi/sm8250
git submodule init
git submodule update
cd ../../../

# Clone hardware_xiaomi
if [ ! -d "hardware/xiaomi" ]; then
    git clone https://github.com/Sanjis-Android-Playground/hardware_xiaomi hardware/xiaomi -b aosp-16
fi

# Clone hardware_dolby
if [ ! -d "hardware/dolby" ]; then
    git clone https://github.com/Sanjis-Android-Playground/android_hardware_dolby.git hardware/dolby
fi

# Clone vendor_xiaomi_alioth
if [ ! -d "device/xiaomi/sm8250-common" ]; then
    git clone https://github.com/Sanjis-Android-Playground/device_xiaomi_sm8250-common.git device/xiaomi/sm8250-common -b aosp-16
fi

# Clone vendor_xiaomi_alioth
if [ ! -d "vendor/xiaomi/alioth" ]; then
    git clone https://github.com/Sanjis-Android-Playground/vendor_xiaomi_alioth vendor/xiaomi/alioth -b aosp-16
fi

# Clone vendor_xiaomi_alioth
if [ ! -d "vendor/xiaomi/sm8250-common" ]; then
    git clone https://github.com/Sanjis-Android-Playground/vendor_xiaomi_sm8250-common.git vendor/xiaomi/sm8250-common -b aosp-16
fi

# Clone packages_apps_GameBar
if [ ! -d "packages/apps/GameBar" ]; then
    git clone https://github.com/Sanjis-Android-Playground/packages_apps_GameBar.git  packages/apps/GameBar/
fi

# Clone vendor_xiaomi_camera
if [ ! -d "vendor/xiaomi/camera" ]; then
    git clone https://gitlab.com/johnmart19/vendor_xiaomi_camera vendor/xiaomi/camera -b aosp-16 --depth 1
fi

# Clone device_xiaomi_camera
if [ ! -d "device/xiaomi/camera" ]; then
    git clone https://github.com/Sanjis-Android-Playground/device_xiaomi_camera.git device/xiaomi/camera -b aosp-16
fi

# Clone vendor_lunaris-priv_keys
if [ ! -d "vendor/lunaris-priv/keys" ]; then
    git clone https://github.com/Lunaris-AOSP/vendor_lunaris-priv_keys.git vendor/lunaris-priv/keys
fi

# Clone debugger from royna
if [ ! -d "hardware/samsung-ext/interfaces" ]; then
    git clone https://github.com/Roynas-Android-Playground/hardware_samsung-extra_interfaces.git -b lineage-23.2 hardware/samsung-ext/interfaces
fi
