#!/usr/bin/env bash

ssh -o PasswordAuthentication=no git@gl.appris.by

if [ $? -ne 0 ]; then
    echo "Can't connect to gl.appris.by. Probably you don't have ssh key?"
    exit
fi

cd site/
git clone git@gl.appris.by:rating_mak/chgk_rating.git .
cp .env.example .env
mkdir -p var/cache/dev/
sudo chmod -R 777 var/

cd ..
cd api/
git clone git@gl.appris.by:rating_mak/api.git .
cp .env.dev.local.example .env.dev.local
mkdir -p var/cache/dev/
sudo chmod -R 777 var/
