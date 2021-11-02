#!/bin/bash
sshfs viktor@$(nslookup desktop-hama | grep Non-authoritative -A2 | grep Address | cut -d" " -f2):/home/viktor/ desktop_home

