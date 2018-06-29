FROM debian:jessie

# Allow replacing httpredir or deb mirror
ARG APT_MIRROR=deb.debian.org
RUN sed -ri "s/(httpredir|deb).debian.org/$APT_MIRROR/g" /etc/apt/sources.list

RUN apt-get update && apt-get install -y proxychains

# Add proxychains configuration
COPY gfw/proxychains.conf /etc/proxychains.conf

# Add pip source
COPY gfw/pip.conf /root/.pip/pip.conf

ENTRYPOINT ["/bin/bash"]

