FROM debian:wheezy
MAINTAINER Olivier Ligot <oligot@gmail.com>

RUN apt-get update && apt-get -y install curl bzip2 make gcc
RUN curl -L# https://ftp.eiffel.com/pub/download/14.05/Eiffel_14.05_gpl_95417-linux-x86-64.tar.bz2 | tar xj -C /usr/local

# Define Eiffel environment variables
ENV ISE_EIFFEL /usr/local/Eiffel_14.05
ENV ISE_PLATFORM linux-x86-64
ENV ISE_LIBRARY $ISE_EIFFEL
ENV EIFFEL_LIBRARY /eiffel
ENV PATH $PATH:$ISE_EIFFEL/studio/spec/$ISE_PLATFORM/bin
