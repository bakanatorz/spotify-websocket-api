#!/bin/sh

set -e -x
VER=$TRAVIS_PYTHON_VERSION
apt-get update -yqq || true
apt-get upgrade -yqq || true
apt-get install -q python$VER
curl -sSLO --retry 5 --fail https://github.com/downloads/denik/packages/python2.7-cython_0.17.1_i386.deb
#curl -sSLO --retry 5 --fail https://github.com/downloads/denik/packages/python$VER-greenlet_0.4.0_i386.deb
#curl -sSLO --retry 5 --fail https://github.com/downloads/denik/packages/python$VER-psycopg2_2.4.5_i386.deb
#curl -sSLO --retry 5 --fail https://github.com/downloads/denik/packages/python$VER-pysendfile_2.0.0_i386.deb
dpkg -i python2.7-cython_0.17.1_i386.deb
#dpkg -i python$VER-greenlet_0.4.0_i386.deb
#dpkg -i python$VER-psycopg2_2.4.5_i386.deb
#dpkg -i python$VER-pysendfile_2.0.0_i386.deb
pip install -q requests greenlet protobuf cherrypy ws4py python-mpd2 lxml web.py --upgrade
pip install -q git+https://github.com/SiteSupport/gevent.git --upgrade
