1. Obtain installed package files
    `dpkg -l | grep "^ii"| awk ' {print $2} ' | xargs sudo apt-get -y install --reinstall --download-only`  
  See [How to obtain installed package files?](http://askubuntu.com/questions/86358/how-to-obtain-installed-package-files)

2. Q. While `sudo apt-get update` warning occurred:
   W: GPG error: http://path/to/repo wily InRelease: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY <HEX-value>

   A. Execute `sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com <HEX-value>` to fix this.

3. Disable/remove/enable services
3.1 SysVinit scripts 
    sudo update-rc.d service-name disable
    sudo update-rc.d service-name enable
    sudo update-rc.d service-name remove
    sudo update-rc.d service-name stop levels .

where service-name is a name of script /etc/init.d directory.

3.2 Upstart (prior to version 15.04)
    sudo start service-name
    sudo stop service-name
    sudo restart service-name
    sudo status service-name

3.3 Systemd (since version 15.04)
    systemctl start service-name
	Start a service

    systemctl stop service-name
	Stop a srvice

    systemctl restart service-name
	Restart a service
    
    systemctl reload service-name
	If the service supports it, it will reload the config files related 
	to it without interrupting any process that is using the service.

    systemctl status service-name
	Shows the status of a service. Tells whether a service is currently running.

    systemctl enable service-name
	Turns the service on, on the next reboot or on the next start event.
	It persists after reboot.

    systemctl disable service-name
	Turns the service off on the next reboot or on the next stop event.
	It persists after reboot.

    systemctl is-enabled service-name
	Check if a service is currently configured to start or not on the next reboot.

    systemctl is-active service-name
	Check if a service is currently active.

    systemctl show service-name
	Show all the information about the service.
