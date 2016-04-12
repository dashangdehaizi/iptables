/sbin/iptables -t nat -A PREROUTING -d *.*.*.*  -j DNAT --to-destination *.*.*.*
/sbin/iptables -t nat -A POSTROUTING -s *.*.*.*  -o eth0 -j SNAT --to-source *.*.*.*


/sbin/iptables -t nat -A PREROUTING -s *.*.*.*/32 -i em2 -p tcp -m tcp --dport 59208 -j DNAT --to-destination *.*.*.*:14000

/sbin/iptables -t nat -A POSTROUTING -s 10.0.0.1 -d 10.4/16 -j SNAT --to 10.4.1.166