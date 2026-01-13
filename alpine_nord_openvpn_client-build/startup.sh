#!/usr/bin/env bash

MOUNTED_VOLUME=/vpn
DOCKER_CONFIG_DIR=/config
FILE_EXTENSION=*.ovpn

#Export user creds to file
echo $VPN_USER >> $DOCKER_CONFIG_DIR/credentials.txt && echo $VPN_PASS >> $DOCKER_CONFIG_DIR/credentials.txt
echo "{INFO}-Exported user credentials"

#Get random VPN config file
config_file=$(find $MOUNTED_VOLUME -name "$FILE_EXTENSION" | sort | shuf -n 1)
echo "{INFO}-File Location=$config_file"

#Where ovpn files are stored
openvpn_args1=("--config $config_file --cd $MOUNTED_VOLUME")
echo "{INFO}-$openvpn_args1"

#File for credentials
openvpn_args2=("--auth-user-pass $DOCKER_CONFIG_DIR/credentials.txt")
echo "{INFO}-$openvpn_args2"

#Run script after vpn is up
openvpn_args3=("--script-security 2 --up $DOCKER_CONFIG_DIR/vpn_startup.sh")
echo "{INFO}-$openvpn_args3"

#Launch VPN with config
echo openvpn $openvpn_args1 $openvpn_args2 $openvpn_args3
openvpn $openvpn_args1 $openvpn_args2 $openvpn_args3
