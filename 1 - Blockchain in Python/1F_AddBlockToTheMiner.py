import datetime
import hashlib

# Define the Block class
class Block:
    def __init__(self, data, previous_hash):
        # Set the timestamp to the current time in UTC
        self.timestamp = datetime.datetime.now(datetime.timezone.utc)
        # Store the block's data
        self.data = data
        # Store the hash of the previous block
        self.previous_hash = previous_hash
        # Calculate the hash of the current block
        self.hash = self.calc_hash()

    # Method to calculate the SHA-256 hash of the block's data
    def calc_hash(self):
        sha = hashlib.sha256()
        # Encode the data to bytes and update the hash object
        hash_str = self.data.encode("utf-8")
        sha.update(hash_str)
        # Return the hexadecimal representation of the hash
        return sha.hexdigest()

# Create the blockchain with the genesis block
blockchain = [Block("First block", "0")]
# Append subsequent blocks to the blockchain
blockchain.append(Block("Second block", blockchain[0].hash))
blockchain.append(Block("Third block", blockchain[1].hash))

# Print the details of each block in the blockchain
for block in blockchain:
    print(f"Timestamp: {block.timestamp}\nData: {block.data}\nPrevious Hash: {block.previous_hash}\nHash: {block.hash}\n")
