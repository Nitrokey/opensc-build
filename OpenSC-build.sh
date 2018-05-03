#!/bin/sh

openscver='0.18.0-rc1' # as stated on GitHub
openscver_ubuntu='0.18.0~rc1storageopc3' # package name in PPA/Ubuntu
repourl=http://de.archive.ubuntu.com/ubuntu/
codename=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -f2 -d'=')

# add sources and install software needed
repo="deb-src $repourl $codename universe"
sh -c "echo $repo > /etc/apt/sources.list.d/openscbuild.list"
apt-get update
apt-get install -y apt-src wget scdaemon libccid pcscd
apt-src update

# enter clean folder and copy old build template
mkdir -p opensc/$codename
cd opensc/$codename
apt-src install opensc

# download and copy sources from github to apt-src folder...
wget https://github.com/OpenSC/OpenSC/archive/$openscver.tar.gz
tar -xzf $openscver.tar.gz
oldopenscver=$(apt-src version --upstream-version opensc)
cp -r opensc-$oldopenscver/debian OpenSC-$openscver/
rm -rf opensc-$oldopenscver/
mv OpenSC-$openscver opensc-$oldopenscver
mv $openscver.tar.gz opensc_$oldopenscver.orig.tar.gz

# change package version
echo "opensc ($openscver_ubuntu) unstable; urgency=medium" >> changelog
echo >> changelog
echo "  * New upstream release." >> changelog
echo >> changelog
echo " -- Szczepan Zalega <szczepan@nitrokey.com>  Fri, 13 Apr 2018 11:43:07 +0200" >> changelog
echo >> changelog
cat opensc-$oldopenscver/debian/changelog >> changelog
mv changelog opensc-$oldopenscver/debian/

# build OpenSC
apt-src build opensc
