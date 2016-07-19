#!/bin/sh

TRACKED_VERSIONS="
2.7
2.7.1
2.7.10
2.7.11
2.7.2
2.7.3
2.7.4
2.7.5
2.7.6
2.7.7
2.7.8
2.7.9
2.7.10
2.7.11
2.7.12
3.0
3.0.1
3.1
3.1.1
3.1.2
3.1.3
3.1.4
3.1.5
3.2
3.2.1
3.2.2
3.2.3
3.2.4
3.2.5
3.2.6
3.3.0
3.3.1
3.3.2
3.3.3
3.3.4
3.3.5
3.3.6
3.4.0
3.4.1
3.4.2
3.4.3
3.4.4
3.4.5
3.5.0
3.5.1
3.5.2
"

for VER in $TRACKED_VERSIONS; do
  PY_VER="Python-${VER}"
  PY_TAR="${PY_VER}.tgz"
  if [ ! -e $PY_VER ]; then
    wget -q --show-progress https://www.python.org/ftp/python/${VER}/${PY_TAR} && \
    tar zxf ${PY_TAR} && \
    rm -rf ${PY_TAR}
  else
    echo "skipping existing ${PY_VER}"
  fi
done
