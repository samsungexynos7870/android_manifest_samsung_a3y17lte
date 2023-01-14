# Arrow OS Android 11

### How to build ###

```bash
# Create dirs
$ mkdir arrow && cd arrow

# Init repo
$ repo init -u https://github.com/ArrowOS/android_manifest.git -b arrow-11.0

# Clone my local repo
$ git clone https://github.com/samsungexynos7870/android_manifest_samsung_a3y17lte.git -b arrow-11 .repo/local_manifests

# Sync
$ repo sync --no-repo-verify -c --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j`nproc`

# Fixup posix spawn error, caused by too long out dir path
$ git clone https://github.com/LineageOS/android_build_soong.git -b lineage-18.1 tmp && cp -r tmp/ui/build/config.go build/soong/ui/build && rm -rf tmp

# Build
$ . build/envsetup.sh && lunch arrow_a3y17lte-user && make bacon 
```

## Credits
2021 @Astrako 2022 @FlominatorGD

## Contact
Telegram support group: <s>https://t.me/joinchat/D1Jk_VbieGBXOWZt2y8O7A</s> DEPRECATED
