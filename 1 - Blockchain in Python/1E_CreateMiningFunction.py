import hashlib

# Function to compute the SHA-256 hash of a given message
def sha256(message):
    return hashlib.sha256(message.encode("ascii")).hexdigest()

# Function to mine a message with a given difficulty
def mine(message, difficulty=1):
    # Ensure the difficulty is at least 1
    assert difficulty >= 1
    # Create a prefix string of '1's of length equal to the difficulty
    prefix = "1" * difficulty
    # Iterate to find a valid nonce

    for i in range(1000):
        # Compute the hash of the message combined with the current iteration number
        digest = sha256(str(hash(message)) + str(i))
        # Check if the hash starts with the required prefix
        if digest.startswith(prefix):
            print(f"After {i} iterations found nonce: {digest}")
            return digest
    # Return None if no valid nonce is found within the iteration limit
    return None

# Test the mining function with a sample message and difficulty
print(mine("test message", 2))