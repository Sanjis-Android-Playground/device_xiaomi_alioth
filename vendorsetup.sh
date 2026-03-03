#!/bin/bash

base64 -d device/xiaomi/alioth/configs/camera/secret > device/xiaomi/alioth/configs/camera/st_license.lic

# Clone kernel_xiaomi_sm8250
if [ ! -d "kernel/xiaomi/sm8250" ]; then
    git clone https://github.com/Sanjis-Android-Playground/android_kernel_xiaomi_sm8250.git kernel/xiaomi/sm8250
fi

# Clone hardware_xiaomi
if [ ! -d "hardware/xiaomi" ]; then
    git clone https://github.com/zen0s-aospforge/hardware_xiaomi hardware/xiaomi -b 16
fi

# Clone hardware_dolby
if [ ! -d "hardware/dolby" ]; then
    git clone https://github.com/Meow-prjkt/android_hardware_dolby.git hardware/dolby --depth 1
fi


# Clone vendor_xiaomi_alioth
if [ ! -d "vendor/xiaomi/alioth" ]; then
    git clone https://github.com/zenzer0s/android_vendor_xiaomi_alioth.git vendor/xiaomi/alioth -b main --depth 1
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
    git clone https://github.com/PocoF3Releases/device_xiaomi_camera device/xiaomi/camera -b aosp-16 --depth 1
fi

# Clone vendor_lunaris-priv_keys
if [ ! -d "vendor/lunaris-priv/keys" ]; then
    git clone https://github.com/Lunaris-AOSP/vendor_lunaris-priv_keys.git vendor/lunaris-priv/keys
fi



