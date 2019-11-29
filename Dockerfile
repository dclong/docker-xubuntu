FROM dclong/ubuntu_cn

ARG url=https://download.nomachine.com/download/6.8/Linux/nomachine_6.8.1_1_amd64.deb

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
        xfce4 xfce4-whiskermenu-plugin \
        terminator bash-completion man-db \
        firefox \
    && wget $url -O /nomachine.deb \
    && curl $url -o /nomachine.deb \
    && dpkg -i /nomachine.deb \
    && rm /nomachine.deb \
    && mkdir /root/.config \
    && apt-get autoremove \
    && apt-get autoclean

EXPOSE 4000

COPY settings /settings
COPY scripts /scripts
