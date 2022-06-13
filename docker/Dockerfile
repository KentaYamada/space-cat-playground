FROM alpine:latest

RUN apk add --no-cache \
    bash \
    dpkg \
    git \
    autoconf \
    automake \
    make \
    clang \
    clang-dev \
    gcc \
    lld \
    musl-dev

RUN ln -sf /usr/bin/clang /usr/bin/cc
RUN ln -sf /usr/bin/clang++ /usr/bin/c++

RUN update-alternatives --install /usr/bin/cc cc /usr/bin/clang 10 && \
    update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++ 10 && \
    update-alternatives --install /usr/bin/ld ld /usr/bin/lld 10 && \
    update-alternatives --auto cc && \
    update-alternatives --auto c++ && \
    update-alternatives --auto ld && \
    update-alternatives --display cc && \
    update-alternatives --display c++ && \
    update-alternatives --display ld

RUN ls -l /usr/bin/cc /usr/bin/c++

RUN cc --version
RUN c++ --version