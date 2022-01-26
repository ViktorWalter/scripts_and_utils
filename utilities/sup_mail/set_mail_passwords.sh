#!/bin/bash
gmail_password=`pass Email/gmail | head -n1`
python3 -c "import keyring; keyring.set_password('gmail', 'personal', '${gmail_password}')"

outlook_password=`pass Email/outlook | head -n1`
python3 -c "import keyring; keyring.set_password('outlook', 'personal', '${outlook_password}')"

fel_password=`pass Email/fel | head -n1`
python3 -c "import keyring; keyring.set_password('fel', 'personal', '${fel_password}')"

disroot_password=`pass Email/disroot | head -n1`
python3 -c "import keyring; keyring.set_password('disroot', 'personal', '${disroot_password}')"
