# docker-multitool
![Docker Build Workflow](https://github.com/mike-callahan/docker-multitool/actions/workflows/docker-image.yml/badge.svg)

## Overview
This tool was created for assisting in debugging kubernetes clusters. The image provides a variety of common linux utilities along with support for kubernetes health checks.

## Packages
The image is built on the Ubuntu 24.04 Docker image and is intended to offer similar functionality as Ubuntu Server without the overhead of the ubuntu-server apt package. I have added additional packages that enhance productivity as well. Currently the following packages are installed:

```
age
apt-utils
bash
bind9-dnsutils
ca-certificates
curl
eza
fdisk
gh
git
gnupg
google-cloud-sdk
htop
iproute2
iputils-arping
iputils-ping
iputils-tracepath
man-db
mysql-client
less
libterm-readline-gnu-perl
ntfs-3g
openssh-client
openssl
pciutils
perl
postgresql-client
python3
ripgrep
screen
snapd
thefuck
tmux
tzdata
unzip
vim
wget
xdg-user-dirs
xz-utils

```
