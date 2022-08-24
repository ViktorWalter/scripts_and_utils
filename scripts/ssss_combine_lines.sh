#!/bin/bash
expect -c "set ip 0; spawn ssss-combine -t 3;expect \"Share\"; send $(sed '5!d' ssss_test)\n; expect \"Share\"; send $(sed '9!d' ssss_test)\n; expect \"Share\"; send $(sed '1!d' ssss_test)\n; expect \"Resulting\"; sleep 0.5" | tail -n1
