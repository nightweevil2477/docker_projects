#Built from image
FROM alpine:3

#Install package + Edit conf file
RUN apk add --no-cache bash tinyproxy && sed -i -e '/^Allow /s/^/#/' -e '/^ConnectPort /s/^/#/' -e '/^#DisableViaHeader /s/^#//' /etc/tinyproxy/tinyproxy.conf

#Docker file to use at launch
CMD ["tinyproxy", "-d"]
