FROM dorowu/ubuntu-desktop-lxde-vnc:focal

# Eski/bozuk depo linklerini silip, Java'yı öyle kuruyoruz
RUN rm -rf /etc/apt/sources.list.d/* \
    && apt-get update \
    && apt-get install -y default-jre wget \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt
RUN wget "https://auygs.luca.com.tr/Luca/yardim/uygulamalar/LucaProxyKurulumLinux.sh?v=20261016001a" -O lucaproxy.sh \
    && chmod +x lucaproxy.sh \
    && ./lucaproxy.sh
