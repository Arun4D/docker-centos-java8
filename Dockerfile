FROM centos

MAINTAINER Arun, arun4.duraisamy@gmail.com

# Default to UTF-8 file.encoding
ENV LC_ALL en_US.UTF-8

ENV JAVA_HOME /usr/bin/java
ENV JAVA_VERSION 8u60
ENV RPM_VERSION 8u60-b27

# - install java8 jdk
RUN yum install -y wget && \
    wget \
      --no-cookies \
      --no-check-certificate \
      --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
      "http://download.oracle.com/otn-pub/java/jdk/${RPM_VERSION}/jre-${JAVA_VERSION}-linux-x64.rpm" && \
    yum localinstall -y "jre-${JAVA_VERSION}-linux-x64.rpm" && \
    rm -f "jre-${JAVA_VERSION}-linux-x64.rpm"
