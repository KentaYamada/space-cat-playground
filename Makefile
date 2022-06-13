CXX := clang
CFLAGS := -W -O2

all:
	${CXX} ${CFLAGS} -o hoge ./src/main.c
