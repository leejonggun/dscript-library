#Written by Joseph
#This script makes the outgoing & incoming ICMP request(menas "ping") enable.

sudo iptables -F
sudo iptables -P INPUT DROP
sudo iptables -P OUTPUT DROP
sudo iptables -P FORWARD DROP
sudo iptables -A OUTPUT -p icmp --icmp-type echo-request -j ACCEPT
sudo iptables -A INPUT -p icmp --icmp-type echo-reply -j ACCEPT
sudo iptables -L

echo "ping Test"
ping 192.168.1.1 -c 2
ping www.google.com -c 2
echo "Test End"
