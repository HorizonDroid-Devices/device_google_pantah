echo 'Starting to clone stuffs needed to build for cheetah'

# Device common
echo 'Cloning common device tree'

git clone https://github.com/HorizonDroid-Devices/device_google_gs201 -b aosp-14 device/google/gs201
git clone https://github.com/HorizonDroid-Devices/device_google_gs101 -b aosp-14 device/google/gs101
git clone https://github.com/HorizonDroid-Devices/device_google_gs-common.git -b aosp-14 device/google/gs-common

# Kernel
echo 'Cloning kernel tree'
git clone --depth=1 --recursive https://github.com/HorizonDroid-Devices/kernel_google_gs201 -b lineage-21-ksu kernel/google/gs201/private/gs-google

# Vendor
echo 'Cloning vendor tree'
git clone https://github.com/HorizonDroid-Devices/proprietary_vendor_google_cheetah -b aosp-14 vendor/google/cheetah

rm -rf hardware/google/pixel && git clone https://github.com/LineageOS/android_hardware_google_pixel -b lineage-21.0 hardware/google/pixel

rm -rf hardware/google/graphics/common && git clone https://github.com/LineageOS/android_hardware_google_graphics_common -b lineage-21.0 hardware/google/graphics/common

rm -rf hardware/google/pixel-sepolicy && git clone https://github.com/LineageOS/android_hardware_google_pixel-sepolicy -b lineage-21.0 hardware/google/pixel-sepolicy

rm -rf hardware/google/gchips && git clone https://github.com/LineageOS/android_hardware_google_gchips -b lineage-21.0 hardware/google/gchips

rm -rf device/google/pantah/vendorsetup.sh