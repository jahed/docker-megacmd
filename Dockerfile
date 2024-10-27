FROM ubuntu:noble

WORKDIR /root

RUN apt-get update && apt-get install -y curl \
    && curl -O https://mega.nz/linux/repo/xUbuntu_24.04/amd64/megacmd-xUbuntu_24.04_amd64.deb \
    && apt-get install -y "$PWD/megacmd-xUbuntu_24.04_amd64.deb" \
    && rm "$PWD/megacmd-xUbuntu_24.04_amd64.deb" \
    && rm -rf /var/lib/apt/lists/*

CMD ["mega-cmd-server"]
