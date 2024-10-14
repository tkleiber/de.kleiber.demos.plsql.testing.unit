#!/bin/bash
while ! grep -q JAVA_HOME /opt/oracle/oradata/java.env; do
  echo "JAVA_HOME not found yet in /opt/oracle/oradata/java.env, sleeping..."
  sleep 5
done
echo "String found!"