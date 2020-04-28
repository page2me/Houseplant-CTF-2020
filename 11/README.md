```
cat msg.txt | tr -d '.' | tr '\n' ' ' | cut -f11,22,33,44,55,66,77,88,99,110 -d" "| tr ' ' '_'
```
```
$ bash msg.sh
I'm_hungry_give_me_bread_and_I_will_love_you
```
