#!/usr/bin/env bash
echo "Install JDK"
pushd "/opt/oracle/oradata" || exit $?
curl -LOk https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.tar.gz
tar --extract --gzip --verbose --file jdk-21_linux-x64_bin.tar.gz
JDK_DIR=$(ls -d jdk-* | grep -E "^jdk-[0-9]+\.[0-9]+(\.[0-9]+)?$")
echo export PATH=\$PATH:$(pwd)/$JDK_DIR/bin >> /opt/oracle/oradata/java.env
echo export JAVA_HOME=$(pwd)/$JDK_DIR >> /opt/oracle/oradata/java.env
source /opt/oracle/oradata/java.env
java -version
popd