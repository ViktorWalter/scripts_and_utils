false
while [ $? -ne 0 ]; do
sudo service network-manager restart
sleep 1
nmcli con up HK
sleep 1
ping google.com -c 1
done
echo "Connected"
