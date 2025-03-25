i3status | while :
do
  echo ",[{\"full_text\":\"exec xkblayout-state print %s \" },${line#,\[}" || exit 1  
#  echo "exec xkblayout-state print %s | $line" || exit 1
done
