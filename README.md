# LineageOS 17.1

### How to build ###

```bash
# Create dirs
$ mkdir lineage ; cd lineage

# Init repo
$ repo init --depth=1 -u https://github.com/LineageOS/android.git -b lineage-17.1

# Clone my local repo
$ git clone https://github.com/samsungexynos7870/android_manifest_samsung_a3y17lte.git -b lineage .repo/local_manifests

# Sync
$ repo sync --no-repo-verify -c --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j`nproc`

# Build
$ . build/envsetup.sh && lunch lineage_a3y17lte-userdebug && mka clean && mka api-stubs-docs && mka hiddenapi-lists-docs && mka system-api-stubs-docs && mka test-api-stubs-docs && mka bacon -j`nproc`
```

## Credits
2019 @Astrako

## Contact
Telegram support group: https://t.me/joinchat/D1Jk_VbieGBXOWZt2y8O7A
