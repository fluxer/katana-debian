#!/bin/sh

set -e

dpkg-scanpackages . /dev/null > Packages
gzip -fk Packages
apt-ftparchive release . > Release
