# TWRP Recovery Project

### How to build ###

```bash
# Create dirs
$ mkdir twrp ; cd twrp

# Init repo
$ repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0
# Clone my local repo
$ git clone https://github.com/samsungexynos7870/android_device_samsung_a3y17lte.git -b twrp-post-12 device/samsung/a3y17lte

# Sync
$ repo sync --no-repo-verify -c --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j`nproc`

# for modern systems not running python2
# build and install python2
$ chmod +x python2_helper.sh && ./python2_helper.sh

# sandbox legacy stuff
$ pip2 install virtualenv
$ python2 -m virtualenv ~/envs/twrp
$ source ~/envs/twrp/bin/activate 

# Build
$ . build/envsetup.sh
$ lunch omni_a3y17lte-eng
$ make recoveryimage
```

## Credits
2019 @Astrako 2026 @FlominatorGD

## Contact
Telegram support group: https://t.me/joinchat/D1Jk_VbieGBXOWZt2y8O7A
