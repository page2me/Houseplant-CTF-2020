```
$ strings ezoterik.jpg | tail -n1 | tr -d ' '> ezoterik.txt
```
```
CyberChef - From Base58
ezoterik.B58
```
```
$ cat ezoterik.B58 | grep show| cut -f6 -d" " | tr -d '\r'  | tr '\n' ' ' > ezoterik.DEC
```
```
CyberChef - From Decimal
```
```
rtcp{Not quite normal stego_4xbb45gytj}
```
