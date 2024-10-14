#!/usr/bin/env bash
echo "Install utPLSQL Core"
curl -LOk "$(curl --silent https://api.github.com/repos/utPLSQL/utPLSQL/releases/latest | awk '/browser_download_url/ { print $2 }' | grep ".zip\"" | sed 's/"//g')"
unzip -q utPLSQL.zip
pushd "utPLSQL/source" || exit $?
sqlplus sys/oracle@freepdb1 as sysdba @install_headless.sql utp3 oracle
popd
echo "Install utPLSQL CLI"
pushd "/opt/oracle/oradata" || exit $?
curl -LOk "$(curl --silent https://api.github.com/repos/utPLSQL/utPLSQL-cli/releases/latest | awk '/browser_download_url/ { print $2 }' | grep ".zip\"" | sed 's/"//g')"
unzip -q utPLSQL-cli.zip
popd