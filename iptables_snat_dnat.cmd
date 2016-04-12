/sbin/iptables -t nat -A PREROUTING -d *.*.*.*  -j DNAT --to-destination *.*.*.*
/sbin/iptables -t nat -A POSTROUTING -s *.*.*.*  -o eth0 -j SNAT --to-source *.*.*.*


/sbin/iptables -t nat -A PREROUTING -s *.*.*.*/32 -i em2 -p tcp -m tcp --dport 59208 -j DNAT --to-destination *.*.*.*:14000