# TWRP Recovery Project

### How to build ###

```bash
# Create dirs
$ mkdir twrp ; cd twrp

# Init repo
$ repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0

# Clone my local repo
$ git clone https://gitlab.com/android_samsung_universal7870/manifest/android_manifest_samsung_a3y17lte.git -b twrp .repo/local_manifests

# Sync
$ repo sync --no-repo-verify -c --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j`nproc`

# Build
$ mv device/samsung/a3y17lte/build_twrp.sh .
$ . build_twrp.sh a3y17lte
```

## Credits
2019 @Astrako

## Contact
Telegram support group: https://t.me/joinchat/D1Jk_VbieGBXOWZt2y8O7A
