# Eclipse QA

1. Q. While adding Run/Debug configuration Eclipse says "<NAME> configuration with this name already exists".  
   A. Go to '.metadata/.plugins/org.eclipse.debug.core/.launches' and delete appropriate 'NAME.lounch' file.  
      Restart Eclipse.
   
2. Q. How to remove (delete) Eclipse workspace from the dropdown list.  
   A. Open for edit /path/to/eclipse/configuration/.settings/org.eclipse.ui.ide.prefs and remove appropriate  
      substring in variable RECENT_WORKSPACES



