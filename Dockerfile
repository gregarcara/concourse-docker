FROM debian:jessie
RUN apt-get update && \
    apt-get install -y iptables ca-certificates aufs-tools wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    wget -q https://github.com/concourse/bin/releases/download/v1.3.0-rc.28/concourse_linux_amd64 -O /root/concourse && chmod +x /root/concourse && \
    apt-get remove wget -y && apt-get autoremove -y && \
    apt-get clean
ADD ./keys /root/keys
ADD ./scripts /root/scripts
