```
import base64

ciphertext = 'HxEMBxUAURg6I0QILT4UVRolMQFRHzokRBcmAygNXhkqWBw='
key = 'meownyameownyameownyameownyameownya'

def bxor(ba1, ba2):
    return bytes([_a ^ _b for _a, _b in zip(ba1, ba2)])

flag = bxor(base64.b64decode(ciphertext), key.encode())
print(flag)
```
```
$ python pass3dec.py
b'rtcp{y0u_L3fT_y0uR_x0r_K3y_bEh1nD!}'
```
