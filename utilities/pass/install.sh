#!/bin/bash
SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
sudo apt install pass && 
curl -sSL github.com/passff/passff-host/releases/latest/download/install_host_app.sh | bash -s -- firefox && 
git clone git@git.disroot.org:viktor.walter/password-store.git ~/.password-store &&
cd ~/.password-store &&
git remote add gitlab git@gitlab.com:ViktorWalter/passwords.git
cd $SCRIPT_DIR




