FROM kouki-h/linux_cross_openbsd/binutils:latest AS builder

ADD vendor/gcc-10.2.0.tar.xz /usr/local/src
ADD vendor/base68.tgz /opt
ADD vendor/comp68.tgz /opt

COPY patch/gcc/config/t-openbsd /usr/local/src/gcc-10.2.0/gcc/config/t-openbsd

WORKDIR /usr/local/src/gcc-10.2.0

RUN ./contrib/download_prerequisites \
 && mkdir /usr/local/src/objdir

WORKDIR /usr/local/src/objdir

RUN ../gcc-10.2.0/configure \
 --disable-multilib \
 --enable-languages=c,c++ \
 --prefix=/opt \
 --target=amd64-unknown-openbsd6.8 \
 --with-sysroot=/opt \
 && make -j8 \
 && make install

FROM ubuntu:20.04

COPY --from=builder /opt /opt

RUN mkdir /usr/libexec && ln -s /opt/usr/libexec/ld.so /usr/libexec/ld.so

ENV CROSS_TRIPLE amd64-unknown-openbsd6.8
ENV CROSS_COMPILE ${CROSS_TRIPLE}-
ENV PATH ${PATH}:/opt/bin
ENV AS=/opt/bin/${CROSS_TRIPLE}-as \
    AR=/opt/bin/${CROSS_TRIPLE}-ar \
    CC=/opt/bin/${CROSS_TRIPLE}-gcc \
    CPP=/opt/bin/${CROSS_TRIPLE}-cpp \
    CXX=/opt/bin/${CROSS_TRIPLE}-g++ \
    LD=/opt/bin/${CROSS_TRIPLE}-ld
