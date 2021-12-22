ps -aux | sort -nrk 3 | head -n"${1:-5}"
