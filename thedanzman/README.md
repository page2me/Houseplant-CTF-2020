```
import base64
import codecs

base64_ciphertext = '=ZkXipjPiLIXRpIYTpQHpjSQkxIIFbQCK1FR3DuJZxtPAtkR'
key = 'nyameowpurrpurrnyanyapurrpurrnyanya'
key = codecs.decode(key, "rot_13")

def bxor(ba1, ba2):
    return bytes([_a ^ _b for _a, _b in zip(ba1, ba2)])

def wow(x):
  return x[::-1]
ciphertext = wow(base64_ciphertext)
ciphertext = codecs.decode(ciphertext, "rot_13")
flag = bxor(base64.b64decode(ciphertext), key.encode())
print(flag)
```
```
$ python pass4dec.py 
b'rtcp{n0w_tH4T_w45_m0r3_cH4lL3NgiNG}'
```
