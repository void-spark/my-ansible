FROM ubuntu:18.04

RUN apt-get update \
&& apt-get install -y software-properties-common \
&& apt-add-repository --yes --update ppa:ansible/ansible \
&& apt-get install -y \
    ansible \
    cpio \
    git \
    less \
    nano \
    python3 \
    python3-pip \
    rsync \
    wget \
&& rm -rf /var/lib/apt/lists/* \
&& pip3 install proxmoxer \
&& pip3 install requests

COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s /usr/local/bin/docker-entrypoint.sh / # backwards compat
ENTRYPOINT ["docker-entrypoint.sh"]

CMD [ "/bin/bash" ]
