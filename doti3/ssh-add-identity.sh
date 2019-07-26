#/usr/bin/zsh
# /usr/bin/ssh-add -l
/usr/bin/ssh-add -l > /dev/null
if [ $? -ne 0 ]; then
  eval "$(ssh-agent)"
  password=`python -c "import keyring,sys; sys.stdout.write(keyring.get_password('git-ssh-key','personal'))"`
  expect -c " spawn ssh-add; expect \"Enter passphrase for \"; send \"$password\r\"; expect \"%\"; return 0"
fi
