FROM debian:jessie
RUN apt-get update && \
    apt-get install -y iptables ca-certificates aufs-tools && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
ADD ./keys /root/keys
ADD ./scripts /root/scripts
ADD https://github.com/concourse/concourse/releases/download/v1.0.0/concourse_linux_amd64 /root/concourse
