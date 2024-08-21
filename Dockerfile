FROM ubuntu:noble

COPY --from=mikecallahan/k8s-keepalive:1.0.0 /usr/bin/k8s-keepalive /usr/bin/k8s-keepalive
COPY --from=gcr.io/google.com/cloudsdktool/google-cloud-cli:debian_component_based /google-cloud-sdk /google-cloud-sdk

RUN apt update && DEBIAN_FRONTEND=noninteractive apt upgrade -y

RUN DEBIAN_FRONTEND=noninteractive apt install -y \
apt-utils \
man-db

RUN DEBIAN_FRONTEND=noninteractive apt install -y \
age \
apt-utils \
bash \
bind9-dnsutils \
ca-certificates \
curl \
eza \
fdisk \
gh \
git \
gnupg \
htop \
iproute2 \
iputils-arping \
iputils-ping \
iputils-tracepath \
mysql-client \
less \
libterm-readline-gnu-perl \
ntfs-3g \
openssh-client \
openssl \
pciutils \
perl \
postgresql-client \
python3 \
ripgrep \
screen \
snapd \
thefuck \
tmux \
tzdata \
unzip \
vim \
wget \
xdg-user-dirs \
xz-utils

EXPOSE 5000

CMD ["/usr/bin/k8s-keepalive"]