FROM debian:stable

RUN apt -y update && apt -y upgrade && apt -y install mpd lame mpc ncmpcpp bash
#RUN mkdir -p playlists
#RUN touch {mpd.db,mpd.log,mpd.pid,mpdstate}

ADD mpd.conf /etc/
ADD mpd.sh /etc/

EXPOSE 6600
EXPOSE 8000

VOLUME ["/music"]
VOLUME ["/mpd"]
ENTRYPOINT [ "bash", "/etc/mpd.sh" ]
