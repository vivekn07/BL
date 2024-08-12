# pip install pycryptodome

from Crypto.PublicKey import RSA

# Generate a new RSA key pair
key = RSA.generate(2048)

# Export the public key in PEM format
public_key = key.publickey().export_key("PEM")

# Export the private key in PEM format
private_key = key.export_key("PEM")

# Print the public key
print(public_key)

# Print the private key
print(private_key)
