### Stream music using mpd within docker
Not yet working..

### Usage
```
docker build -t mpdocker .
docker run -dit -p 8000:8000 -v /home/freak/Music:/music -v /dev/shm:/mpd mpdocker
```
