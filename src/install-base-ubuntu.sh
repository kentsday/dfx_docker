apt-get update
export DEBIAN_FRONTEND=noninteractive
apt-get -y install \
    liblmdb-dev \
    gcc \
    build-essential \
    gdb \
    python3-pip \
    make \
    cmake \
    pkg-config \
    clang \
    gcc-multilib
apt-get clean