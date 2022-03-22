#/usr/bin/zsh
# /usr/bin/ssh-add -l
/usr/bin/ssh-add -l > /dev/null
if [ $? -ne 0 ]; then
  eval "$(ssh-agent)"
  password=`pass Work/Git_1 | head -n 1`
  expect -c " spawn ssh-add; expect \"Enter passphrase for \"; send \"$password\r\"; expect \"%\"; return 0"
fi
