# Havoc OS Android 11

### How to build ###

```bash
# Create dirs
$ mkdir arrow && cd havoc

# Init repo
$ repo init -u https://github.com/Havoc-OS/android_manifest.git -b eleven

# Clone my local repo
$ git clone https://github.com/samsungexynos7870/android_manifest_samsung_a3y17lte.git -b havoc-11 .repo/local_manifests

# Sync
$ repo sync --no-repo-verify -c --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j`nproc`

# Build
$ . build/envsetup.sh && lunch havoc_a3y17lte-user && make bacon 
```

## Credits
2021 @Astrako 2022 @FlominatorGD

## Contact
Telegram support group: <s>https://t.me/joinchat/D1Jk_VbieGBXOWZt2y8O7A</s> DEPRECATED
