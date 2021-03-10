FROM kouki-h/linux_cross_openbsd/base:latest AS builder

ADD vendor/binutils-2.36.1.tar.xz /usr/local/src

WORKDIR /usr/local/src/binutils-2.36.1

RUN ./configure \
 --prefix=/opt \
 --target=amd64-unknown-openbsd6.8 \
 && make \
 && make install

FROM kouki-h/linux_cross_openbsd/base:latest

COPY --from=builder /opt /opt
