sudo su

ip r | grep default

sudo nano /etc/resolv.conf > nameserver 192.168.0.1

sudo systemctl restart NetworkManager