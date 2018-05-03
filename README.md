# Quick builds of OpenSC for Ubuntu 

This repo contains some selfmade builds of OpenSC for Ubuntu. They are based on the most recent packages available for each version (working with apt-src). The binaries are built using the official docker container and a simple script.

Please have a look at the [docker-compose file](docker-compose.yml) and the [script](OpenSC_build.sh).

## Usage

Just download the two .deb packages for your version of Ubuntu and install them.

foldername | Ubuntu version
-----------|---------------
[xenial](xenial/) | 16.04
[artful](artful/) | 17.10
[bionic](bionic/) | 18.04

After downloading the packages please type in the following in a terminal:

```
cd Downloads
sudo apt-get update && sudo apt-get install libccid scdaemon pcscd
sudo dpkg --install opensc_0.18.0~rc1storageopc3_amd64.deb opensc-pkcs11_0.18.0~rc1storageopc3_amd64.deb
```
