key = "mysecretkey"
encrypted_hex = (
    "9E89846A78658586"
    "6A977D797C846380"
    "7C7F6B67848BAB90"
    "7B698370896B997C"
    "797C8D6C6F7E81AE"
    "866AB36D7B7F669D"
    "7E6A7F96678F9382"
    "898263B474"
)
encrypted_bytes = bytes.fromhex(encrypted_hex)
result = ""
for i, b in enumerate(encrypted_bytes):
    step1 = b - ord(key[(i + 1) % 11])
    step1 = step1 & 0xFF
    step2 = step1 ^ ord(key[i % 11])
    result += chr(step2)
print("Flag:", result)
