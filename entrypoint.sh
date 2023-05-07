#!/bin/bash -l

#path=$(pwd)

#echo "$INPUT_NAME"
#echo "$INPUT_TAG"
#echo "$path"

#mkdir /etc/docker
#mkdir ~/.docker

echo "-----"

mkdir -p ~/.docker
echo $'{\n  "experimental": "enabled"\n}' | tee ~/.docker/config.json

echo "-----"

cat /etc/docker/daemon.json

echo "-----"

#touch /run/openrc/softlevel
#service docker restart

echo "-----"

sudo /bin/ps -hl

echo "-----"

docker version
#docker build --tag alex-nginx:latest --squash ./test

exit 0

pat="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"
user="DockerImageDeploy"
docker login ghcr.io -u "$user" --password "$pat"

docker image ls

docker image save -o ./test.tar alex-nginx:latest

ls -las

exit 0
