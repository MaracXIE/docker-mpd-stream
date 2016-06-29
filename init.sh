#!/bin/bash

# Modify these accordingly
music_dir="/home/neil/Music"
playlist_dir="/dev/shm/"
mpd_dir="/dev/shm/"

docker build -t mpdocker .
container=$(docker run -dit -p 6600:6600 -p 8000:8000 -v "$music_dir":/music -v "$playlist_dir":/playlists -v "$mpd_dir":/mpd mpdocker)
echo "$container"
docker exec -it "$container" bash
