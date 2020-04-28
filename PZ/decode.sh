cp pass1.py pass1dec.py
sed -i 's/return True/print(userinput)\n      return True/g' pass1dec.py
grep -o 'rtcp{[a-zA-Z0-9_]*}' pass1.py | python pass1dec.py
