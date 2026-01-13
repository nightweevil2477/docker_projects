#Built using image
FROM alpine:latest

#Install packages + Package clean up + Create folder for storage of docker content
RUN apk add --no-cache bash openvpn iptables && mkdir /vpn && mkdir /config

#Copy docker startup script
COPY startup.sh /config/startup.sh

#Copy VPN startup script
COPY vpn_startup.sh /config/vpn_startup.sh

#Make docker startup script an executable + Make VPN startup script an executable
RUN chmod +x /config/startup.sh && chmod +x /config/vpn_startup.sh

#File to run when docker starts
CMD ["/config/startup.sh"]
