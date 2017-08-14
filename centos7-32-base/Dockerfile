FROM scratch
MAINTAINER Nuno Fernandes <npf@eurotux.com>
ADD centos7*bz2 /
LABEL name="CentOS Base Image" \
    license="GPLv2" \
    build-date="2016-02-07"

# Volumes for systemd
# VOLUME ["/run", "/tmp"]

# Environment for systemd
# ENV container=docker

# For systemd usage this changes to /usr/sbin/init
# Keeping it as /bin/bash for compatability with previous
ENTRYPOINT ["/usr/bin/setarch","i386"]
CMD ["/bin/bash"]
