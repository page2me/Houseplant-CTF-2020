import base64

base64_ciphertext = 'ÐdØÓ§åÍaèÒÁ¡'
key = "h1_th3r3_1ts_m3"

def bxor(ba1, ba2):
    """ XOR two byte strings """
    return bytes([ord(_a) - ord(_b) for _a, _b in zip(ba1, ba2)])

flag = bxor(base64_ciphertext, key)
print(flag)
