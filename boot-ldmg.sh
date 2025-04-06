# !/bin/bash

user=$(whoami)

if [ "$user" == "root" ]
then

  cp ldmg.xml /usr/share/mime/packages/
  update-mime-database /usr/share/mime
  
  cp ldmg-mounter.desktop /usr/share/applications/
  cp mount-ldmg.sh /usr/local/bin/

  chmod 777 /usr/local/bin/mount-ldmg.sh 

else
echo "run this script as root user"
fi
