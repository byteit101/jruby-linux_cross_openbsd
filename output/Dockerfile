FROM ubuntu:20.04

COPY --from=kouki-h/linux_cross_openbsd/gcc:latest /opt /opt

RUN apt-get -y update \
 && apt-get -y --no-install-recommends install curl wget bash bzip2 file gzip ncurses-dev tar xz-utils zip ca-certificates pkg-config make \
 && apt-get clean autoclean --yes \
 && rm -rf /var/lib/{apt,dpkg,cache,log}/

RUN mkdir /usr/libexec && mkdir /workdir && ln -s /opt/usr/libexec/ld.so /usr/libexec/ld.so

WORKDIR /workdir

ENV CROSS_TRIPLE amd64-unknown-openbsd6.8
ENV CROSS_COMPILE ${CROSS_TRIPLE}-
ENV PATH ${PATH}:/opt/bin
ENV AS=/opt/bin/${CROSS_TRIPLE}-as \
    AR=/opt/bin/${CROSS_TRIPLE}-ar \
    CC=/opt/bin/${CROSS_TRIPLE}-gcc \
    CPP=/opt/bin/${CROSS_TRIPLE}-cpp \
    CXX=/opt/bin/${CROSS_TRIPLE}-g++ \
    LD=/opt/bin/${CROSS_TRIPLE}-ld
