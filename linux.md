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

### Access Single User Mode (Reset Root Password)

Source: [Access Single User Mode (Reset Root Password)](https://www.vultr.com/docs/boot-into-single-user-mode-reset-root-password)

#### Ubuntu

1. Click \[View Console\] to access the console and click the send CTRL+ALT+DEL button on the top right.
Alternatively, you can also click [RESTART] to restart the server.  
2. As soon as the boot process starts, press ESC to bring up the GRUB boot prompt.
You may need to turn the system off from the control panel and then back on to reach the GRUB boot prompt.  
3. You will see a GRUB boot prompt - press "e" to edit the first boot option. (If you do not see the GRUB prompt, 
you may need to press any key to bring it up before the machine boots)  
4. Find the kernel line (starts with "linux /boot/") and add init="/bin/bash" at the end of the line (On CentOS 7, 
the line may start with linux16).  
5. Press CTRL-X or F10 to boot.  
6. System will boot and you will see the root prompt. Type "mount -rw -o remount /" and then "passwd" 
to change the root password and then reboot again.  
