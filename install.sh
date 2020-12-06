#!/usr/bin/env bash

cd site/
git clone git@gl.appris.by:rating_mak/chgk_rating.git .
cp .env.example .env
mkdir var/cache/dev/
sudo chmod -R 777 var/

cd ..
cd api/
git clone git@gl.appris.by:rating_mak/api.git .
cp .env.example .env
mkdir var/cache/dev/
sudo chmod -R 777 var/
