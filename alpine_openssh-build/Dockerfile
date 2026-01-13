#Built using image
FROM alpine:latest

#Install packages + Package clean up + SSH allow root login via remote + Set dummy ssh password + Change ssh port
RUN apk add --update --no-cache openssh &&  sed -i "s/#PermitRootLogin prohibit-password.*/PermitRootLogin yes/g" /etc/ssh/sshd_config && echo -n 'root:dockersshaccess' | chpasswd && sed -i "s/#Port 22.*/Port 22/g" /etc/ssh/sshd_config

#Copy docker startup script
COPY startup.sh /startup.sh

#Make docker startup script an executable
RUN chmod +x /startup.sh

#File to run when docker starts
CMD ["/startup.sh"]
