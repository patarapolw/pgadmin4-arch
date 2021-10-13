## pgadmin4-arch

This is based on Debian Bullseye (11)'s deb and [debtap](https://aur.archlinux.org/packages/debtap/)

## Installation

Installation instructions:

1. Download `*.pkg.tar.zst` from <https://github.com/patarapolw/pgadmin4-arch/releases>
2. Install `pgadmin4-server` first
3. Install either `pgadmin4-desktop` or `pgadmin4-web`

Post installation:

```sh
sudo chmod -R 777 /usr/pgadmin4
sudo chmod -R 755 /usr/share/applications
sudo chmod -R 755 /usr/share/icons
```
