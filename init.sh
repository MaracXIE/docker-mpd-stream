#!/bin/bash

docker build -t mpdocker .
container=$(docker run -dit -p 6600:6600 -p 8000:8000 -v /home/neil/Music:/music -v /dev/shm:/playlists -v /dev/shm:/mpd mpdocker)
echo "$container"
docker exec -it "$container" bash
