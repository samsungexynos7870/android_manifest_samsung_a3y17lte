# Aosp Extended

### How to build ###

```bash
# Create dirs
$ mkdir aex ; cd aex

# Init repo
$ repo init --depth=1 -u git://github.com/AospExtended/manifest.git -b 10.x

# Clone my local repo
$ git clone https://github.com/samsungexynos7870/android_manifest_samsung_a3y17lte.git -b aex .repo/local_manifests

# Sync
$ repo sync --no-repo-verify -c --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j`nproc`

# Build
$ . build/envsetup.sh && lunch aosp_a3y17lte-userdebug && mka clean && mka api-stubs-docs && mka hiddenapi-lists-docs && mka system-api-stubs-docs && mka test-api-stubs-docs && mka bacon -j`nproc`
```

## Credits
2019 @Astrako

## Contact
Telegram support group: https://t.me/joinchat/D1Jk_VbieGBXOWZt2y8O7A
