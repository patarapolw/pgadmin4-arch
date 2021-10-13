#!/bin/bash -e

docker build -t pgadmin4-arch .
mkdir -p ./out
docker run -v $(pwd)/out:/out pgadmin4-arch

cd out
for i in $(find . -maxdepth 1 -type f -iname 'pgadmin4-*.deb')
do
    debtap "$i"
done
