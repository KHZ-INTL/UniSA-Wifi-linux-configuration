# UniSA-Wifi-linux-configuration
UniSA Wifi configuration for linux: WICD and WPA_SUPPLICANT


## With WICD-GTK

1. Copy `unisa-wifi` file to `/etc/wicd/encryption/templates/`

2. add `unisa-wifi` to top of `/etc/wicd/encryption/templates/active` file

3. From WICD-GTK application locate Unisa Wifi access point and click on properties, next to the connect button. Click on Use encrption and select `UniSA Wifi` from the available encryption options.

4. Enter your UniSA Alias and Password.

Note: It is recommended to tick the `Use these settings for all networks sharing this essid`. However, it is untested.


## Or with WPA_SUPPLICANT

1. Copy `unisa.cfg` file somewhere accessable, perhaps in your `~/.config` folder.

2. Kill other `wpa_supplicant` instances and restart it with `sudo wpa_supplicant -c PATH_TO_unisa.cfg_file -i YOUR_WIRELESS_INTERFACE -D nl80211`

3. Run `sudo dhcpcd YOUR_WIRELESS_INTERFACE`

Note: The bash script `con_unisa_net.sh` found in this repository automates the WPA_SUPPLICANT process, please edit it and run it with sudo permission?


