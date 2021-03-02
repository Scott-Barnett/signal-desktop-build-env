FROM node:12.18.3
RUN apt update
RUN apt upgrade -y
RUN apt install -y python gcc g++ make
RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
RUN wget -P /git-lfs https://github.com/git-lfs/git-lfs/releases/download/v2.13.2/git-lfs-linux-amd64-v2.13.2.tar.gz
RUN tar -xvzf /git-lfs/* -C /git-lfs
RUN bash /git-lfs/install.sh
RUN git lfs install
RUN rm -rf /git-lfs
RUN apt clean
