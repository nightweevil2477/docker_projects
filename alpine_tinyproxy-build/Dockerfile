#Built using image
FROM alpine:latest

#Install packages + Edit conf file + Create folder for storage of docker content
RUN apk add --no-cache bash tinyproxy && sed -i -e '/^Allow /s/^/#/' -e '/^ConnectPort /s/^/#/' -e '/^#DisableViaHeader /s/^#//' /etc/tinyproxy/tinyproxy.conf && mkdir /config

#Copy docker startup script
COPY startup.sh /config/startup.sh

#Make docker startup script an executable
RUN chmod +x /config/startup.sh

#File to run when docker starts
CMD ["/config/startup.sh"]
