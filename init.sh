#!/bin/bash

USER_ID=${DOCKER_USER_ID:-9001}
USER=${DOCKER_USER:-dclong}
PASSWORD=${DOCKER_PASSWORD:-$USER}
useradd -o -u $USER_ID -d /home/$USER -s /bin/bash -c "$USER" $USER 
gpasswd -a $USER sudo
export HOME=/home/$USER
mkdir -p $HOME/.config
if [[ ! -d $HOME/.config/xfce4 ]]; then
    cp -r /root/.config/xfce4 $HOME/.config/
fi
chown -R $USER:$USER /home/$USER 

echo ${USER}:${PASSWORD} | chpasswd

su -m $USER && echo $PASSWORD | sudo -S /script.sh
