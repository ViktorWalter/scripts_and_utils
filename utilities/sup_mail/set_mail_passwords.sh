#!/bin/bash
gmail_password=`pass Email/gmail/password`
python3 -c "import keyring; keyring.set_password('gmail', 'personal', '${gmail_password}')"

outlook_password=`pass Email/outlook/password`
python3 -c "import keyring; keyring.set_password('outlook', 'personal', '${outlook_password}')"

fel_password=`pass Email/fel/password`
python3 -c "import keyring; keyring.set_password('fel', 'personal', '${fel_password}')"

disroot_password=`pass Email/disroot/password`
python3 -c "import keyring; keyring.set_password('disroot', 'personal', '${disroot_password}')"
