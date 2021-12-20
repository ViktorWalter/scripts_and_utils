echo "GMail password: "
read -s gmail_password
python3 -c "import keyring; keyring.set_password('gmail', 'personal', '${gmail_password}')"
echo "Outlook password: "
read -s outlook_password
python3 -c "import keyring; keyring.set_password('outlook', 'personal', '${outlook_password}')"
echo "FEL password: "
read -s fel_password
python3 -c "import keyring; keyring.set_password('fel', 'personal', '${fel_password}')"
echo "Disroot password: "
read -s disroot_password
python3 -c "import keyring; keyring.set_password('disroot', 'personal', '${disroot_password}')"
