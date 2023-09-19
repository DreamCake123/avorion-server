FROM cm2network/steamcmd:root

#Install server
USER steam
RUN ./steamcmd.sh \
    +login anonymous \
    +force_install_dir /server \
    +app_update 565060 validate \
    +exit

EXPOSE 27000/tcp
EXPOSE 27000/udp
EXPOSE 27003/udp
EXPOSE 27020/udp
EXPOSE 27021/udp

ENV ADMIN 0

#CMD ["/server/server.sh --galaxy-name world --admin ${ADMIN} --datapath galaxy"]