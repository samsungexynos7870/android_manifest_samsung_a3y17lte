# ResurrectionRemix 8

### How to build ###

```bash
# Create dirs
$ mkdir rr8 ; cd rr8

# Init repo
$ repo init --depth=1 -u https://github.com/ResurrectionRemix/platform_manifest.git -b Q

# Clone our local repo
$ git clone https://github.com/samsungexynos7870/android_manifest_samsung_a3y17lte.git -b RR-8 .repo/local_manifests

# Sync
$ repo sync --no-repo-verify -c --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j`nproc`

# Build
For 8GB RAM
$ . build/envsetup.sh && lunch rr_a3y17lte-user && mka clean && mka api-stubs-docs && mka hiddenapi-lists-docs && mka system-api-stubs-docs && mka test-api-stubs-docs && mka bacon -j`nproc`

For 16GB RAM or more 
$ . build/envsetup.sh && mka clean && brunch rr_a3y17lte-user
```

## Credits
2019 @Astrako, POSP, LOS and RR branches kept up to date by @Sap1k

## Contact
Telegram support group: https://t.me/joinchat/D1Jk_VbieGBXOWZt2y8O7A
