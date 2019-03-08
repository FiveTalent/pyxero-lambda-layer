####### Install and compile everything #######

# Same AL version as Lambda execution environment AMI
FROM amazonlinux:2017.03.1.20170812 as builder

# Lock to 2017.03 release (same as Lambda) and install compilation dependencies
RUN sed -i 's;^releasever.*;releasever=2017.03;;' /etc/yum.conf && \
    yum clean all && \
    yum install -y autoconf \
    bison \
    gcc \
    gcc-c++ \
    make \
    libcurl-devel \
    libxml2-devel \
    openssl-devel \
    tar \
    gzip \
    zip \
    unzip \
    git

# Download and compile Python 3.6
RUN curl -sL https://www.python.org/ftp/python/3.6.5/Python-3.6.5.tgz | tar -xvz && \
    cd Python-3.6.5 && \
    ./configure --enable-optimizations --with-ensurepip=install && \
    make -j 8 && \
    make altinstall && \
    python3.6 -V

# Install pyxero
RUN mkdir -p /opt/pyxero && \
    pip3.6 install pyxero -t /opt/pyxero

WORKDIR /opt/pyxero
