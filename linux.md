### stty

    $ stty -F /dev/ttyS0 57600 cs8 -parodd cstopb
    
Parity:
-parenb : none
-parodd : even
parodd  : odd

Data bits: cs{5|6|7|8}

Stop bits:
-cstopb : 1
cstopb  : 2
   
### DHCP, dhclient, IP address

Edit /etc/dhcp/dhclient.conf: insert line like below

    send dhcp-requested-address <REQUESTED_IP_ADDR>;
    
Stop and start dhclient as user `root`

    dhclient -r -v
    dhclient [-v] <DEVICE>
