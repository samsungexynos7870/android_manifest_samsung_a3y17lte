# LineageOS 18.1

### How to build ###

```bash
# Create dirs
$ mkdir lineage ; cd lineage

# Init repo
$ repo init --depth=1 -u https://github.com/LineageOS/android.git -b lineage-18.1

# Clone my local repo
$ git clone https://github.com/samsungexynos7870/android_manifest_samsung_a3y17lte.git -b lineage-18.1 .repo/local_manifests

# Sync
$ repo sync --no-repo-verify -c --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j`nproc`

# Build
$ . build/envsetup.sh && brunch lineage_a3y17lte-userdebug
```

## Credits
2021 @Astrako

## Contact
Telegram support group: <s>https://t.me/joinchat/D1Jk_VbieGBXOWZt2y8O7A</s> DEPRECATED
