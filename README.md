# Quick builds of OpenSC for Ubuntu 

This repo contains some selfmade builds of OpenSC for Ubuntu. They are based on the most recent packages available for each version (working with apt-src). The binaries are built using the official docker container and a simple script.

Please have a look at the [docker-compose file](docker-compose.yml) and the [script](OpenSC_build.sh).You can use the script to build the binaries yourself, but you may have to adapt things.

## Usage

Just download the two .deb packages for your version of Ubuntu and install them.

Ubuntu Codename | Ubuntu version | Direct Link to Package Files
----------------|----------------|-----------------------------
xenial | 16.04 | [opensc-0.18.0-rc1](https://github.com/Nitrokey/opensc-build/raw/master/xenial/opensc_0.18.0%7Erc1storageopc3_amd64.deb), [opensc-pkcs11-0.18.0-rc1](https://github.com/Nitrokey/opensc-build/raw/master/xenial/opensc-pkcs11_0.18.0%7Erc1storageopc3_amd64.deb)
artful | 17.10 | [opensc-0.18.0-rc1](https://github.com/Nitrokey/opensc-build/raw/master/artful/opensc_0.18.0%7Erc1storageopc3_amd64.deb), [opensc-pkcs11-0.18.0-rc1](https://github.com/Nitrokey/opensc-build/raw/master/artful/opensc-pkcs11_0.18.0%7Erc1storageopc3_amd64.deb)
bionic | 18.04 | [opensc-0.18.0-rc1](https://github.com/Nitrokey/opensc-build/raw/master/bionic/opensc_0.18.0%7Erc1storageopc3_amd64.deb), [opensc-pkcs11-0.18.0-rc1](https://github.com/Nitrokey/opensc-build/raw/master/bionic/opensc-pkcs11_0.18.0%7Erc1storageopc3_amd64.deb)

After downloading the packages please type in the following in a terminal:

```
cd Downloads
sudo apt-get update && sudo apt-get install libccid scdaemon pcscd
sudo dpkg --install opensc_0.18.0~rc1storageopc3_amd64.deb opensc-pkcs11_0.18.0~rc1storageopc3_amd64.deb
```
