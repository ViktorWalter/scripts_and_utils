#!/bin/bash
gmail_password=`pass Email/gmail | head -n1`
python3 -c "import keyring; keyring.set_password('gmail', 'personal', '${gmail_password}')"
gmail_ci=`pass Email/gmail_o | head -n1`
python3 -c "import keyring; keyring.set_password('gmail_client_id', 'personal', '${gmail_ci}')"
gmail_cs=`pass Email/gmail_o | head -n2 | tail -n1`
python3 -c "import keyring; keyring.set_password('gmail_client_secret', 'personal', '${gmail_cs}')"
gmail_rt=`pass Email/gmail_o_rt
echo $gmail_rt
python3 -c "import keyring; keyring.set_password('gmail_refresh_token', 'personal', '${gmail_rt}')"

outlook_password=`pass Email/outlook | head -n1`
python3 -c "import keyring; keyring.set_password('outlook', 'personal', '${outlook_password}')"

fel_password=`pass Email/fel | head -n1`
python3 -c "import keyring; keyring.set_password('fel', 'personal', '${fel_password}')"

fel_password=`pass Work/CVUT | head -n1`
python3 -c "import keyring; keyring.set_password('fel_x', 'personal', '${fel_password}')"
o365_rt=`pass Email/Office365_RT`
python3 -c "import keyring; keyring.set_password('o365_rt', 'personal', '${o365_rt}')"

disroot_password=`pass Email/disroot | head -n1`
python3 -c "import keyring; keyring.set_password('disroot', 'personal', '${disroot_password}')"
