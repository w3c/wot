Instructions on how to set up a VPN for testing, and example configuration files.

Setting up the VPN server generally follows these instructions at Digital Ocean: 
[https://www.digitalocean.com/community/tutorials/how-to-set-up-an-openvpn-server-on-ubuntu-16-04].

However, some modifications are needed to support a bridged ethernet network
(necessary to support mDNS and other discovery mechanisms).  Please see the
server and client configuration files in this directory.
