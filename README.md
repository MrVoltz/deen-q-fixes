# A Magisk module containing fixes for Motorola One (deen) running Android Q

- **bt_profile.conf**
    + `map_email_support = false`
    + prevents LineageOS Email client from crashing
- disabled OTA updates (annoying popup)
- disable Android lowmemorykiller kernel module
    + the module didn't do anything, no logs, nothing
    + by revoking write access to `/sys/module/lowmemorykiller/parameters/minfree`, userspace lmkd takes over

