FROM dorowu/ubuntu-desktop-lxde-vnc:focal

RUN rm -rf /etc/apt/sources.list.d/* \
    && apt-get update \
    && apt-get install -y default-jre \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt
COPY LucaProxyKurulumLinux.sh /opt/lucaproxy.sh
RUN chmod +x lucaproxy.sh && ./lucaproxy.sh
