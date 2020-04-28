grep == pass2.py | grep userinput | tr -d ' '| sed "s/ifuserinput/flag/g" | sed "s/:[0-9]*\]=/]/g"| rev | cut -c 3- | rev > pass2dec.py
cat pass2head.py pass2dec.py pass2tail.py | python
