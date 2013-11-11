## GRUB

### View description for Simple confguration.

    $ info -f grub -n 'Simple configuration'
    
### Some usefull keys from '/etc/default/grub'

* 'GRUB_DEFAULT'
	The default menu entry. This may be a number (Nth entry in the generated menu)
	or a title.
	
	For example:
	
    menuentry 'Ubuntu' --class ubuntu {
    ...
    }	

	GRUB_DEFAULT='Ubuntu'

	$ sudo update-grub