1. ### Obtain installed package files  
    `dpkg -l | grep "^ii"| awk ' {print $2} ' | xargs sudo apt-get -y install --reinstall --download-only`  
  See [How to obtain installed package files?](http://askubuntu.com/questions/86358/how-to-obtain-installed-package-files)
