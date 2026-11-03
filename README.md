# LineageOS 24.0 for Samsung Galaxy A3 (2017) (`a3y17lte`)

LineageOS 24.0 is based on Android 15. This repository includes legacy patches required for this device.

## Build instructions

```bash
# Create and enter the source directory
mkdir Los24 && cd Los24

# Initialize the LineageOS 24.0 source tree
repo init -u https://github.com/LineageOS/android.git -b lineage-24.0 --git-lfs

# Add this device's local manifests
git clone -b lineage-24.0 https://github.com/samsungexynos7870/android_manifest_samsung_a3y17lte.git .repo/local_manifests

# Sync the source tree
repo sync --force-sync --no-clone-bundle --no-tags -v

# Configure and build
. build/envsetup.sh && brunch lineage_a3y17lte-bp1a-userdebug
```

## Credits

- @Astrako (2021)
- @FlominatorGD (2024)

## Contact

Telegram support group: **deprecated** — https://t.me/joinchat/D1Jk_VbieGBXOWZt2y8O7A
