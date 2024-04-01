FROM archlinux AS base
RUN pacman -Syu --noconfirm
WORKDIR /usr/local/bin
RUN pacman -S ansible git neovim sudo base-devel --noconfirm

FROM base AS caleb
ARG TAGS
RUN groupadd --gid 1000 caleb
RUN useradd -m -c "caleb" -u 1000 -g 1000 -s /bin/bash caleb
RUN echo 'caleb:test' | chpasswd
RUN usermod -aG wheel caleb
RUN echo 'caleb ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
USER caleb
WORKDIR /home/caleb

ENV USER=caleb

FROM caleb
RUN mkdir ~/.ssh
RUN sudo chown -R caleb:caleb ~/.ssh
RUN echo 'export USER=$(whoami)'
COPY --chown=caleb . ./ansible
CMD ["sh", "-c". "ansible-playbook $TAGS local.yml"]
