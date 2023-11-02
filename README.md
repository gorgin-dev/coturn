# Dockerized Coturn

All you need to have a dockerized turn server is to install docker and docker-compose, then 
clone this repository and config your turn server by editing turnserver.conf file as you wish and run it!

I'll give you more details in following steps:

## 1- install docker and docker-compose
if you don't know how to install docker and docker-compose follow this link for ubuntu: 
https://docs.docker.com/engine/install/ubuntu

## 2- Edit turnserver.conf
open turnserver.conf do following steps:
 
`1- set (or just uncomment) listening-port on line 18`

`2- set listening-ip on line 60 to your server public ip address`

`3- set min-port and max-port on line 157 and 158`

`4- set your username and password on line 261 like this: user=yourusername:yourpassword`

`5- uncomment #no-udp on line 397` 

`note: this step is optional but if your cellular put some limitation on udp you may have trouble to connect on udp so you
need to do this step to fix it`

`6- set cli-password on line 705`

## 3- run it!
cd to the directory and execute following command in your terminal:
`docker-compose up -d`



note: you can change other configs on turnserver.conf but some features such as setting TLS may not work yet.
note: to check if your turn server works well or not you can use this link: https://webrtc.github.io/samples/src/content/peerconnection/trickle-ice/   
