# docker_projects
-=Repo/DockerHub=[nightweevil2477/docker_projects](https://hub.docker.com/r/nightweevil2477/docker_projects)<br>
<br>
<br>
-=How to=-<br>
<br>
-=Macvlan=-<br>
sudo docker network create -d macvlan -o parent=|*host nic*| --subnet=|*ip range.0/24*| --gateway=|*router ip*| --ip-range=|*ip range.0/24*| |*network name*|<br>
<br>
-=Dockers=-<br>
-=Built From Scratch=-<br>
<br>
--=NordVpn Openvpn Client=--<br>
sudo docker run -d --restart unless-stopped --net |*network name*| --ip |*static ip*| --cap-add=NET_ADMIN --device /dev/net/tun:/dev/net/tun -v /mounted folder/openvpn_nord_client:/vpn -e VPN_USER=|*your username*| -e VPN_PASS=|*your password*| --name |*container name*| nightweevil2477/docker_projects:alpine_nord_openvpn_client<br>
<br>
--=Pia OpenVPN Client=--<br>
sudo docker run -d --restart unless-stopped --net |*network name*| --ip |*static ip*| --cap-add=NET_ADMIN --device /dev/net/tun:/dev/net/tun -v /mounted folder/openvpn_pia_client:/vpn -e VPN_USER=|*your username*| -e VPN_PASS=|*your password*| --name |*container name*| nightweevil2477/docker_projects:alpine_pia_openvpn_client<br>
<br>
--=Openssh Server=--<br>
sudo docker run -d --restart unless-stopped --net |*network name*| --name |*container name*| nightweevil2477/docker_projects:alpine_openssh<br>
<br>
--=Tinyproxy=--<br>
sudo docker run -d --restart unless-stopped --net |*network name*| --ip |*static ip*| --dns |*static ip*| --name |*container name*| nightweevil2477/docker_projects:alpine_tinyproxy<br>
<br>
-=Custom Built From DockerHub Image=-<br>
<br>
--=Pihole=--<br>
sudo docker run -d --restart unless-stopped --net |*network name*| --ip |*static ip*| -e FTLCONF_webserver_api_password=|*change me*| --name |*container name*| nightweevil2477/docker_projects:alpine_pihole_cloudflare<br>
<br>
--=Pihole=--<br>
sudo docker run -d --restart unless-stopped --net |*network name*| --ip |*static ip*| -e FTLCONF_webserver_api_password=|*change me*| --name |*container name*| nightweevil2477/docker_projects:alpine_pihole_pia<br>
<br>
--=Pihole=--<br>
sudo docker run -d --restart unless-stopped --net |*network name*| --ip |*static ip*| -e FTLCONF_webserver_api_password=|*change me*| --name |*container name*| nightweevil2477/docker_projects:alpine_pihole_nord<br>
<br>
--=Portainer=--
<br>
sudo docker run -d --restart unless-stopped -v /var/run/docker.sock:/var/run/docker.sock -v /mounted folder/portainer/data:/data -p 9443:9443 --name |*container name*| nightweevil2477/docker_projects:alpine_portainer<br>
<br>
--=Neolink=--<br>
sudo docker run -d --restart unless-stopped --net |*network name*| --ip |*static ip*| -dns |*static ip*| -v /mounted folder/neolink/config.toml:/etc/neolink.toml --name |*container name*| nightweevil2477/docker_projects:debian_neolink<br>
<br>
--=Frigate=--<br>
sudo docker run -d --privileged --restart unless-stopped --net |*network name*| --ip |*static ip*| --dns |*static ip*| -v /etc/localtime:/etc/localtime:ro -v /mounted folder/frigate/config:/config -v /mounted folder/frigate/storage:/media/frigate -e FRIGATE_RTSP_PASSWORD=|*change me*| --tmpfs /tmp/cache:size=1000000000 --name |*container name*| nightweevil2477/docker_projects:debian_frigate<br>
<br>
--=N8n=--<br>
sudo docker run -d --restart unless-stopped --net |*network name*| --ip |*static ip*| --dns |*static ip*| -v /mounted folder/n8n/data:/home/node/.n8n --name |*container name*| nightweevil2477/docker_projects:alpine_n8n<br>
<br>
--=Aria2-NG=--<br>
sudo docker run -d --restart unless-stopped --net |*network name*| --ip |*static ip*| --dns |*static ip*| -v /mounted folder/aria2/config:/aria2/conf -v /mounted folder/aria2/downloads:/aria2/data -e BASIC_AUTH_USERNAME=|*change me*| -e RPC_SECRET=|*change me*| -e EMBED_RPC_SECRET=|*change me*| -e BASIC_AUTH_PASSWORD=|*change me*| --name |*container name*| nightweevil2477/docker_projects:alpine_aria2<br>
<br>
--=Openspeedtest (For The LAN)=--
docker run -d --restart unless-stopped --net |*network name*| --ip |*static ip*| --name |*container name*| openspeedtest/latest<br>
<br>
--=Uptime-Kuma=--
docker run -d --restart unless-stopped --net |*network name*| --ip |*static ip*| -v /mounted folder/uptime-kuma:/app/data --name |*container name*| nightweevil2477/docker_projects:alpine_uptime-kuma<br>
<br>

-=In Build=-<br>
<br>
--=Speedtest-tracker (For The WAN)=--
<br>
--=NordLynx (Wireguard Client)
<br>
--=Zerotier=--
<br>
