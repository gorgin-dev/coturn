FROM ubuntu:22.04

RUN apt update
RUN apt install coturn -y

RUN sed -i "s/USER=turnserver/USER=root/" /etc/init.d/coturn
RUN sed -i "s/GROUP=turnserver/GROUP=root/" /etc/init.d/coturn
RUN sed -i "s/#TURNSERVER_ENABLED=1/TURNSERVER_ENABLED=1/" /etc/default/coturn

RUN service coturn stop
#RUN service coturn start

#/etc/default/coturn -> TURNSERVER_ENABLED=1
CMD service coturn start && tail -f /dev/null
