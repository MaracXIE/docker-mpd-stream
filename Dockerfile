FROM debian:stable

RUN apt -y update && apt -y upgrade && apt -y install mpd lame mpc ncmpc
#RUN mkdir -p playlists
#RUN touch {mpd.db,mpd.log,mpd.pid,mpdstate}

ADD mpd.conf /etc/

EXPOSE 6600 8000

VOLUME ["/music"]
VOLUME ["/mpd"]
RUN /usr/bin/mpd /etc/mpd.conf
ENTRYPOINT ["/usr/bin/ncmpc",  "-p", "6678"]
