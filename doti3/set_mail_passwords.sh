echo "GMail password: "
read gmail_password
python3 -c "import keyring; keyring.set_password('gmail', 'personal', '${gmail_password}')"
echo "Outlook password: "
read outlook_password
python3 -c "import keyring; keyring.set_password('outlook', 'personal', '${outlook_password}')"
echo "FEL password: "
read fel_password
python3 -c "import keyring; keyring.set_password('fel', 'personal', '${fel_password}')"
