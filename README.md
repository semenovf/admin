# Tune Workspace

## Eclipse

### Oracle JDK

1. Download JDK from Oracle's site - jdk-VERSION-OS-ARCH.tar.gz.
2. Unzip archive into destination folder (for example, /opt)

	$ sudo tar -zxvf jdk-VERSION-OS-ARCH.tar.gz -C /opt
	$ cd /opt/jdk_VERSION
	$ sudo bash
	# cp /etc/profile /etc/profile~ 
	# echo "export JAVA_HOME=`pwd`" >> /etc/profile
	# echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> /etc/profile
	# exit
	$ tail /etc/profile
	
3. Log out and log in again.
4. Try java

	$ java -version
	java version "VERSION"
	Java (TM) SE Runtime Environment (buid ...)
	...
	
### Install Eclipse IDE

1. Download Eclipse IDE (CDT) from eclipse.org

2. Unzip archive into destination folder (for example, /opt)

	$ sudo tar -zxvf eclipse-PACKAGE.tar.gz -C /opt
	$ cd /opt/eclipse
	$ sudo bash
	# echo "export PATH=\$PATH:`pwd`" >> /etc/profile
	# exit
	$ tail /etc/profile
	
3. If there is a problem with menu visibility look at (askubuntu.com)[http://askubuntu.com/questions/361627/is-there-a-way-to-enable-the-eclipse-global-menu-bar/].
Need to create ~/.local/share/applications/eclipse.desktop with content similar to

	[Desktop Entry]
	Version=4.0
	Type=Application
	Terminal=false
	Exec=env UBUNTU_MENUPROXY= java /opt/eclipse/eclipse
	Name=Eclipse
	Comment=Eclipse Multitool IDE
	Icon=/opt/eclipse/icon.xpm  

or simply add "env UBUNTU_MENUPROXY=" to line started with "Exec=..." (see above).  


### Github.com

### Markdown Editor for Eclipse
[Markdown Editor - http://winterwell.com/software/updatesite/](http://www.winterwell.com/software/markdown-editor.php)

### Perl Markdown Editor for Eclipse
[Perl Editor and IDE for Eclipse version 0.5.x, stable - http://e-p-i-c.sf.net/updates](http://www.epic-ide.org/) 
[Perl Editor and IDE for Eclipse version 0.6.x, testing - http://e-p-i-c.sf.net/updates/testing](http://www.epic-ide.org/)

### Lua Development Tools
[LDT - http://download.eclipse.org/koneki/releases/stable](http://www.eclipse.org/koneki/ldt/)

## Ubuntu
### Boot to Text Mode from GRUB (temporary)
Checked for GRUB 2.0 and Ubuntu 12.04, 12.10, 13.04, 13.10
 
1. From grub menu press 'e'. 
2. Look for the line starting with 'linux /boot/...' and replace 'quiet splash' with 'text'.
3. Press Ctrl+X to boot. 

See additional information on [askubuntu.com](http://askubuntu.com/questions/16371/how-do-i-disable-x-at-boot-time-so-that-the-system-boots-in-text-mode)

### Nvidia Graphics Driver
1. First way
    1. Download from Nvidia site 
    http://ru.download.nvidia.com/XFree86/Linux-x86_64/XXX.YY/NVIDIA-Linux-x86_64-XXX.YY.run 

