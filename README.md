# Quick builds of OpenSC for Debian and Ubuntu 

This repo contains some selfmade builds of OpenSC for Debian and Ubuntu. They are based on the most recent packages available for each version (working with apt-src). The binaries are built using the official docker container and a simple script.

Please have a look at the [docker-compose file](docker-compose.yml) and the [script](OpenSC_build.sh).You can use the script to build the binaries yourself, but you may have to adapt things.

## Installation

Just download the two .deb packages for your version of Debian/Ubuntu and install them.

Codename | Version | Direct Link to Package Files
---------|---------|-----------------------------
Ubuntu xenial | 16.04 | [opensc-0.18.0-1](https://github.com/Nitrokey/opensc-build/raw/master/xenial/opensc_0.18.0-1%7Estorageopc3_amd64.deb), [opensc-pkcs11-0.18.0-1](https://github.com/Nitrokey/opensc-build/raw/master/xenial/opensc-pkcs11_0.18.0-1%7Estorageopc3_amd64.deb)
Ubuntu artful | 17.10 | [opensc-0.18.0-1](https://github.com/Nitrokey/opensc-build/raw/master/artful/opensc_0.18.0-1%7Estorageopc3_amd64.deb), [opensc-pkcs11-0.18.0-1](https://github.com/Nitrokey/opensc-build/raw/master/artful/opensc-pkcs11_0.18.0-1%7Estorageopc3_amd64.deb)
Ubuntu bionic | 18.04 | [opensc-0.18.0-1](https://github.com/Nitrokey/opensc-build/raw/master/bionic/opensc_0.18.0-1%7Estorageopc3_amd64.deb), [opensc-pkcs11-0.18.0-1](https://github.com/Nitrokey/opensc-build/raw/master/bionic/opensc-pkcs11_0.18.0-1%7Estorageopc3_amd64.deb)
Debian Jessie | 8 | [opensc-0.18.0-1](https://github.com/Nitrokey/opensc-build/raw/master/jessie/opensc_0.18.0-1%7Estorageopc3_amd64.deb), [opensc-pkcs11-0.18.0-1](https://github.com/Nitrokey/opensc-build/raw/master/jessie/opensc-pkcs11_0.18.0-1%7Estorageopc3_amd64.deb)
Debian Stretch | 9 | [opensc-0.18.0-1](https://github.com/Nitrokey/opensc-build/raw/master/stretch/opensc_0.18.0-1%7Estorageopc3_amd64.deb), [opensc-pkcs11-0.18.0-1](https://github.com/Nitrokey/opensc-build/raw/master/stretch/opensc-pkcs11_0.18.0-1%7Estorageopc3_amd64.deb)

After downloading the packages please type in the following in a terminal:

```
cd Downloads
sudo apt-get update && sudo apt-get install libccid scdaemon pcscd
sudo dpkg --install opensc_0.18.0-1~storageopc3_amd64.deb opensc-pkcs11_0.18.0-1~storageopc3_amd64.deb
```

## Removal

If you decide to remove the package, just type:

```
sudo dpkg --remove opensc opensc-pkcs11
```

Note that newer package built by Debian/Ubuntu themselves should override this selfbuilt version automatically.
