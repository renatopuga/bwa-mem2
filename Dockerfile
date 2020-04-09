FROM centos:7

MAINTAINER Renato Puga <renatopuga@gmail.com>

RUN yum -y update && yum -y install curl bzip2 \
  && curl -L https://github.com/bwa-mem2/bwa-mem2/releases/download/v2.0pre2/bwa-mem2-2.0pre2_x64-linux.tar.bz2 | tar jxf - \
  && mv bwa-mem2-2.0pre2_x64-linux/bwa-mem2* /usr/local/bin/ \
  && rm -rf bwa*

ENV PATH="${PATH}:/usr/local/bin"

CMD [ "bwa-mem2" ]