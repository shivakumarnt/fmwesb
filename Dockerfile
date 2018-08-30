FROM centos:7.5.1804

ARG UNAME=dockerUser
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID $UNAME
RUN useradd -m -u $UID -g $GID -s /bin/bash $UNAME

WORKDIR /home/$UNAME

USER $UNAME

RUN curl -O http://WS049487:8091/repository/java8_hosted_repo/home/fmwesb/nexus/repos/java/jdk-8u144-linux-x64.tar.gz

CMD ["sh", "-c", "echo", "${JAVA_HOME}"]

