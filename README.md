# Tune Workspace

## C/C++ compiler, libraries, manuals
    
    $ sudo apt-get install g++  
    $ sudo apt-get install qt4-qmake  
    $ sudo apt-get install qt4-default  
    $ sudo apt-get install qt4-dev-tools # optional (installs Qt Designer, Assistant)
    $ sudo apt-get install manpages-posix manpages-posix-dev
    
### Install alternatives to C/C++ compiler (Ubuntu)

    $ # Illustrated on gcc version 4.9 
    
    $ # Download and install packages
    $ sudo apt-get install gcc-4.9 g++-4.9
    
    $ # Install alternatives
    $ sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 10
    $ sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 10
    $ sudo update-alternatives --install /usr/bin/cc cc /usr/bin/gcc 20
    $ sudo update-alternatives --set cc /usr/bin/gcc
    $ sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++ 30
    $ sudo update-alternatives --set c++ /usr/bin/g++
    
    $ # Configure alternatives
    $ sudo update-alternatives --config gcc
    $ sudo update-alternatives --config g++

## Ubuntu
### Boot to Text Mode from GRUB (temporary)
Checked for GRUB 2.0 and Ubuntu 12.04, 12.10, 13.04, 13.10
 
1. From grub menu press 'e'. 
2. Look for the line starting with 'linux /boot/...' and replace 'quiet splash' with 'text'.
3. Press Ctrl+X to boot. 

See additional information on [askubuntu.com](http://askubuntu.com/questions/16371/how-do-i-disable-x-at-boot-time-so-that-the-system-boots-in-text-mode)

### Nvidia Graphics Driver
1. Install NVidia graphics driver using "System Settings/Software \& Updates"
2. Exec `sudo nvidia-xconfig`
3. Edit the file "/etc/X11/xorg.conf"
    $ cat /etc/X11/xorg.conf  
    ...  
    HorizSync 31.0 - 81.0  
    VertRefresh 56.0 - 76.0  
    ...  
4. Restart.
5. Change resolution.

