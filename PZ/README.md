```
cp pass1.py pass1dec.py
sed -i 's/return True/print(userinput)\n      return True/g' pass1dec.py
grep -o 'rtcp{[a-zA-Z0-9_]*}' pass1.py | python pass1dec.py
```
```
$ bash decode.sh 
Enter the password: Incorrect password!
sowwy but now you gunnu have to listen to me spweak in cat giwrl speak uwu~
pwease enter youwr password... uwu~ nya!!: sowwy but that wasnt quite rwight nya~
pwease enter youwr password... uwu~ nya!!: rtcp{iT5_s1mPlY_1n_tH3_C0d3}
s-senpai... i unwocked it fowr you.. uwu~
t-the fwlag is... the password.. nya!
```
