FROM dclong/ubuntu_cn:18.04

RUN apt-get update \
    && apt-get install -y \
        xfce4 xfce4-whiskermenu-plugin \
        terminator firefox \
        pelican \
    && wget https://download.nomachine.com/download/6.2/Linux/nomachine_6.2.4_1_amd64.deb -O /nomachine.deb \
    && dpkg -i /nomachine.deb \
    && rm /nomachine.deb \
    && mkdir /root/.config \
    && apt-get autoremove \
    && apt-get autoclean

EXPOSE 4000

COPY settings /settings
COPY scripts /scripts

ENTRYPOINT ["/scripts/init.sh"]
