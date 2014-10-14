#!/bin/sh

lanschoolstudent=(

/Library/Application\ Support/LanSchool/student.app
/Library/LaunchAgents/com.lanschool.lsutil.plist
/Library/LaunchAgents/com.lanschool.student.plist
/Library/LaunchDaemons/com.lanschool.lsdaemon.plist
/Library/Preferences/com.lanschool.student.settings.plist
/private/var/db/receipts/com.lanschool.student.setup.pkg.bom
/private/var/db/receipts/com.lanschool.student.setup.pkg.plist
/private/var/db/receipts/lanschoolstudent9999.bom
/private/var/db/receipts/lanschoolstudent9999.plist
/private/var/tmp/com.lanschool.lsdaemon
/private/var/tmp/com.lanschool.lsdaemon/bin_cachescan
/private/var/tmp/com.lanschool.lsdaemon/fullcachescan
/private/var/tmp/com.lanschool.lsdaemon/invscan
/private/var/tmp/com.lanschool.lsdaemon/readyscan
/private/var/tmp/com.lanschool.lsdaemon/Socket
/private/var/tmp/com.lanschool.lsdaemon/xml_cachescan
/private/var/db/BootCaches/F3EA5FE4-A80A-4AA8-8B44-04257C0A1477/app.com.lanschool.student.playlist

)

for file in "${lanschoolstudent[@]}"
do

if [ -e $3"$file" ]
then
echo "Removing $file"
rm -r $3"$file"
else
echo "$file doesn't exist!"
fi
done

lspid=`ps aux | grep [s]tudent.app | awk '{print $2}'`
kill $lspid


