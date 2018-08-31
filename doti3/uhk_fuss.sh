#!/bin/bash
chromium-browser --headless --dump-dom --disable-gpu "https://ultimatehackingkeyboard.com/delivery-status" 2>/dev/null | html2text | grep 63833 | cut -f1 -d" "
