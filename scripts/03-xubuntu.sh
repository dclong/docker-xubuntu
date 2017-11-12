#!/usr/bin/env bash

export HOME=/home/$DOCKER_USER 
mkdir -p $HOME/.config
if [[ ! -d $HOME/.config/xfce4 ]]; then
    mv /settings/xfce4 $HOME/.config/
    chown -R $DOCKER_USER:$DOCKER_GROUP $HOME/.config/
fi
