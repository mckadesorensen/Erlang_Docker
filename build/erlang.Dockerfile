FROM amazonlinux:2

RUN yum update -y && \
    yum install -y make unzip nano tar m4 gcc gcc-c++ make libxslt fop ncurses-devel openssl-devel \
    yum install -y openssl wget *openjdk-devel unixODBC unixODBC-devel sed autoconf
