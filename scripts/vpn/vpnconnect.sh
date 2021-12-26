res=-1
while [ "$res" -ne "0" ]
do
  nordvpn connect
  res=$?
done
