#!/bin/sh -l

appid=$1
filepath=$2
version=$3
vid=$4
vkey=$5

echo "appname: $appname"
echo "createprofile: $createprofile"
echo "filepath: $filepath"
echo "version: $version"

curl -O https://downloads.veracode.com/securityscan/pipeline-scan-LATEST.zip
unzip pipeline-scan-LATEST.zip pipeline-scan.jar
java -jar pipeline-scan.jar \
     -appid "$appid" \
     -filepath "$filepath" \
     -version "$version" \
     -vid "$vid" \
     -vkey "$vkey"
