#!/bin/bash
argins="$@"
command="env GIT_MERGE_AUTOEDIT=no GIT_EDITOR=true git ${argins}"
expect -c "spawn $command; expect \"Username for\"; exit" 
login_prompt=`expect -c "spawn $command; expect \"Username for\"; exit" `

echo $login_prompt
if  echo $login_prompt | grep -qi "overleaf" ; then
  # echo "what"
  login=`pass Work/Overleaf_ORCID | tail -n 1 | cut -d " " -f2`
  password=`pass Work/Overleaf_ORCID | head -n 1`
## Add more passwords
else
  echo "I don't know this identity. Please add it to the git_autologin.sh script."
  exit 1
fi

expect -c " spawn $command; expect \"Username for \"; send \"$login\r\"; expect \"Password for \"; send \"$password\r\"; interact"
exit 0
