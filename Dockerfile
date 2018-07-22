FROM centos:centos7
MAINTAINER Thomas Kulish <tkulish@clearedgeit.com>

RUN yum update -y && \
yum install -y wget && \
yum install -y java-1.8.0-openjdk && \
yum clean all

RUN rm -rf /tmp/*
RUN rm -rf /var/cache/yum

CMD ["java", "-version"]
