FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install wget unzip -y
WORKDIR /opt/
RUN wget https://github.com/Pyrinpyi/pyrin/releases/download/0.14.5.1/pyrin-0.14.5.1-linux-amd64.zip
RUN unzip pyrin-0.14.5.1-linux-amd64.zip
RUN mv bin/* /usr/bin/
CMD /usr/bin/pyrin --utxoindex --disable-upnp
