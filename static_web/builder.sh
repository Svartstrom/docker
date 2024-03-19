#! /usr/bin/bash

NAME="--name first_web"
PORT="-p 80:80"

sudo docker stop first_web
sudo docker rm first_web
sudo docker rmi static_web
sudo docker build -t static_web .

sudo docker run -d $NAME $PORT static_web

