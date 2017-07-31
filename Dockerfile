FROM ubuntu
LABEL maintainer="Douglas Eduardo Rosa douglas.erosa@gmail.com"

RUN apt-get update
RUN apt-get upgrade -y
# RUN apt-get install -y build-essential
RUN apt-get install -y make
RUN apt-get install -y cmake
RUN apt-get install -y vim

ADD toolchains/ /toolchains/

ENV CC="/toolchains/android/arm/bin/clang --sysroot=/toolchains/android/arm/sysroot -pie"
ENV CXX="/toolchains/android/arm/bin/clang++ --sysroot=/toolchains/android/arm/sysroot -pie -static-libstdc++"
ENV PATH=$PATH:/toolchains/android/arm/bin/

RUN apt-get autoremove
RUN apt-get clean