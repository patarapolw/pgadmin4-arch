#!/bin/bash -e

docker build --no-cache -t pgadmin4-arch .

DEB="./deb"
PKG="./pkg"

rm -rf "$DEB"
mkdir -p "$DEB"

mkdir -p "$PKG"

docker run -v "$(pwd)/$DEB:/out" pgadmin4-arch

cd "$DEB"
for i in $(find . -maxdepth 1 -type f -iname 'pgadmin4-*.deb')
do
    echo "$i"
    debtap "$i"
done

for i in $(find . -maxdepth 1 -type f -iname 'pgadmin4-*.pkg.tar.zst')
do
    mv "$i" "../$PKG/$i"
done
