FROM alpine:latest

RUN apk add --no-cache bash dpkg git
RUN apk add --no-cache autoconf automake make
RUN apk add --no-cache clang clang-dev gcc lld musl-dev

RUN ln -sf /usr/bin/clang /usr/bin/cc
RUN ln -sf /usr/bin/clang++ /usr/bin/c++

RUN update-alternatives --install /usr/bin/cc cc /usr/bin/clang 10
RUN update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++ 10
RUN update-alternatives --install /usr/bin/ld ld /usr/bin/lld 10

RUN update-alternatives --auto cc
RUN update-alternatives --auto c++
RUN update-alternatives --auto ld

RUN update-alternatives --display cc
RUN update-alternatives --display c++
RUN update-alternatives --display ld

RUN ls -l /usr/bin/cc /usr/bin/c++

RUN cc --version
RUN c++ --version