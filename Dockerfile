FROM centos:latest
RUN yum -y install git python-imgcreate bzip2
RUN git clone https://github.com/spokencloud/ami-creator
ADD centos7.ks /centos7.ks
RUN echo "i686-redhat-linux-gnu" > /etc/rpm/platform
ADD build.sh /build.sh
RUN chmod +x /build.sh

ENTRYPOINT ["/build.sh"]
