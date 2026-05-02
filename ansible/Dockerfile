FROM ubuntu:24.04

RUN apt update \
&& apt install -y software-properties-common \
&& add-apt-repository --yes --update ppa:ansible/ansible \
&& apt install -y \
    ansible \
    cpio \
    git \
    locales \
    locales-all \
    less \
    nano \
    python3 \
    python3-pip \
    python3-proxmoxer \
    python3-requests \
    rsync \
    wget \
&& rm -rf /var/lib/apt/lists/*

RUN ansible-galaxy collection install 'community.docker:<5.0.0' --upgrade -p /usr/lib/python3/dist-packages/ansible_collections

COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s /usr/local/bin/docker-entrypoint.sh / # backwards compat
ENTRYPOINT ["docker-entrypoint.sh"]

CMD [ "/bin/bash" ]
