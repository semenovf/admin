1. Obtain installed package files  
    `dpkg -l | grep "^ii"| awk ' {print $2} ' | xargs sudo apt-get -y install --reinstall --download-only`  
  See [How to obtain installed package files?](http://askubuntu.com/questions/86358/how-to-obtain-installed-package-files)

2. Q. While `sudo apt-get update` warning occurred:
   W: GPG error: http://path/to/repo wily InRelease: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY <HEX-value>

   A. Execute `sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com <HEX-value>` to fix this.
  