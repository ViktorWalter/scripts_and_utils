#!/bin/bash

directory="/usr/lib/jvm/java-${1}-openjdk-amd64/bin/"
if !(test -d $directory); then
  echo Selected version of Java is not installed.
  exit -1
fi

echo Original:
java -version
export PATH=$directory:$PATH
echo Now:
java -version
