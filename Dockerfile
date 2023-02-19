FROM ubuntu:22.04

ENV TZ=Europe/Helsinki
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y gawk wget git diffstat unzip texinfo gcc build-essential \
                               chrpath socat cpio python3 python3-pip python3-pexpect xz-utils \
                               debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa \
                               libsdl1.2-dev xterm python3-subunit mesa-common-dev zstd liblz4-tool \
                               pylint locales sudo vim file gdisk libgtk2.0-dev bsdmainutils \
                               gcc-multilib libgmp-dev libmpc-dev libssl-dev repo

RUN ln -s $(which pylint) $(which pylint)3

ENV USERNAME=build
RUN groupadd -g 1000 $USERNAME \
            && useradd -u 1000 -g $USERNAME -d /home/$USERNAME $USERNAME \
            && mkdir /home/$USERNAME \
            && chown -R $USERNAME:$USERNAME /home/$USERNAME

RUN usermod -aG sudo $USERNAME
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN echo ${USERNAME}:${USERNAME} | chpasswd

RUN locale-gen en_US.UTF-8

ENV LANG en_US.UTF-8

USER ${USERNAME}
WORKDIR /home/${USERNAME}

RUN echo "[user]" > .gitconfig
RUN echo "	name = User" >> .gitconfig
RUN echo "	email = user@example.com" >> .gitconfig

