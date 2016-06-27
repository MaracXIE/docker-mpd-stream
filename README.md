### Stream music using mpd within docker
Why not spin up your own streaming service how you want it?

### Usage
```
docker build -t mpdocker .
docker run -dit -p 6600:6600 -p 8000:8000 -v /home/freak/Music:/music -v /dev/shm:/mpd mpdocker
```

### MPDroid info
```
MPD-Server Host: your hostname/ip
MPD-Server Port: 6600
Password: <add one to the conf?>
Streaming Port: 8000
```
