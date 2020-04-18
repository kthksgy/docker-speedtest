FROM ubuntu:18.04

LABEL maintainer="Sugao <1616191+kthksgy@users.noreply.github.com>"

ARG INSTALL_KEY="379CE192D401AB61"

RUN apt-get update && apt-get install -y \
    lsb-release gnupg1 apt-transport-https dirmngr
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ${INSTALL_KEY}
RUN echo "deb https://ookla.bintray.com/debian $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/speedtest.list
RUN apt-get update && apt-get -y install speedtest

ENTRYPOINT [ "speedtest", "--accept-license" ]