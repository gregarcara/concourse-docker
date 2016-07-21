FROM debian:jessie
RUN apt-get update && \
    apt-get install -y iptables ca-certificates aufs-tools wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    wget -q https://github.com/concourse/concourse/releases/download/v1.5.1/concourse_linux_amd64 -O /root/concourse && chmod +x /root/concourse && \
    wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.1/dumb-init_1.1.1_amd64 && \
    chmod +x /usr/local/bin/dumb-init && \
    apt-get remove wget -y && apt-get autoremove -y && \
    apt-get clean
ADD ./keys /root/keys
ADD ./scripts /root/scripts
