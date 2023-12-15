FROM centos:7.9.2009

RUN yum install https://rpm.nodesource.com/pub_16.x/nodistro/repo/nodesource-release-nodistro-1.noarch.rpm -y && \
	yum install nodejs -y --setopt=nodesource-nodejs.module_hotfixes=1 && \
    yum groupinstall -y "Development Tools" && \
    yum install -y libtool autoconf automake wget gettext which python3 && \
    yum clean all -y

CMD ["/bin/bash"]
