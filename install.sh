#!/bin/bash

#COMMON ENV VARIABLES
BIN_DOWNLOAD_DIR="/tmp/icp-ee/docker"

sudo yum install -y yum-utils
sudo yum install -y socat
sudo yum makecache fast

sudo mkdir -p ${BIN_DOWNLOAD_DIR}

#step 2 - download docker
sudo wget -P ${BIN_DOWNLOAD_DIR} ${INSTALLER_BASEURL}/${INSTALLER_FILENAME}

cd ${BIN_DOWNLOAD_DIR}

#step 3 - install docker
sudo chmod 755 ${INSTALLER_FILENAME}
sudo ./${INSTALLER_FILENAME}

sudo systemctl enable docker
