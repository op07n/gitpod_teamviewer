FROM gitpod/workspace-full-vnc:latest

USER root

RUN apt-get update && apt-get install -y qt5-default libqt5webkit5  libqt5widgets5 libqt5qml5 libqt5quick5

RUN wget -q https://download.teamviewer.com/download/linux/teamviewer_amd64.deb && \
    dpkg -i teamviewer_amd64.deb && rm -rf teamviewer_amd64.deb
    
# install dependencies
RUN apt-get update \
    && apt-get install -y firefox matchbox twm \
&& apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
