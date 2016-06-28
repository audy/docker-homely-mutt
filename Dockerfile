FROM ubuntu

MAINTAINER Austin Richardson <harekrishna@gmail.com>

RUN apt-get update

RUN echo "cacheme"

# http://serverfault.com/questions/143968/automate-the-installation-of-postfix-on-ubuntu
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get install -y \
  mutt \
  python \
  python-pip \
  git \
  sqlite

# offline imap
RUN git clone git://github.com/spaetz/offlineimap.git \
  && cd offlineimap \
  && git checkout 679c491c56c981961e18aa43b31955900491d7a3 \
  && python setup.py install


ADD .mutt /root/.mutt
ADD .offlineimaprc /root/.offlineimaprc

WORKDIR /root

ENTRYPOINT ["/usr/bin/mutt"]
