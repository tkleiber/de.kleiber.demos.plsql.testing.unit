#!/usr/bin/env bash
curl -LOk $(curl --silent https://api.github.com/repos/utPLSQL/utPLSQL/releases/latest | awk '/browser_download_url/ { print $2 }' | grep ".zip\"" | sed 's/"//g')
unzip -q utPLSQL.zip
pushd "utPLSQL/source"
sqlplus sys/oracle@freepdb1 as sysdba @install_headless.sql utp3 oracle