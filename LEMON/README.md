```
import base64

#base64_ciphertext = 'X10iNHk5fQ4HIGBxPnwPU3c='
base64_ciphertext = 'HxEMBxUAURg6I0QILT4UVRolMQFRHzokRBcmAygNXhkqWBw='
key = 'meownyameownyameownyameownyameownya'

def bxor(ba1, ba2):
    """ XOR two byte strings """
    return bytes([_a ^ _b for _a, _b in zip(ba1, ba2)])

flag = bxor(base64.b64decode(base64_ciphertext), key.encode())
print(flag)
```
```
$ python pass3dec.py
b'rtcp{y0u_L3fT_y0uR_x0r_K3y_bEh1nD!}'
```
