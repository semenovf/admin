###Set Netbeans user Interface language

Netbeans automatically uses the Windows system default language as the default user interface language. I believe that it means to be a nice feature for localization. But I personally find it uncomfortable because I have been used with English interface.

After I did some Google search, I learned a few tips to set the Netbeans UI language.

####1. Temporary Solution

Add "--locale en:US" at the end of Netbeans startup command. 

"C:\\Program Files\\NetBeans x.y.z\\bin\\netbeans.exe"  --locale en:US 

####2. Permanent Solution

Go to Netbeans installation directory, for example,

C:\\Program Files\\NetBeans x.y.z\\etc

Open "netbeans.conf" and find netbeans default option line

netbeans_default_options="-J-client -J-Xss2m -J-Xms32m -J-XX:PermSize=32m -J-XX:MaxPermSize=200m -J-Xverify:none -J-Dapple.laf.useScreenMenuBar=true"

Add "-J-Duser.language=en -J-Duser.region=US" to the end of this line

netbeans_default_options="-J-client -J-Xss2m -J-Xms32m -J-XX:PermSize=32m -J-XX:MaxPermSize=200m -J-Xverify:none -J-Dapple.laf.useScreenMenuBar=true -J-Duser.language=en -J-Duser.region=US"

Reference:
[Tao's Sun Blog](https://blogs.oracle.com/tao/entry/set_netbeans_user_interface_language)
