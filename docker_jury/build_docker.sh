#!/bin/bash

# sudo docker rmi "game-example/fhq-jury-ad:0.0.2"
sudo docker build --rm=true -t "game-example/fhq-jury-ad:0.0.2" .
