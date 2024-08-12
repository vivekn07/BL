# Genesis block to initialize the blockchain
genesis_block = {
    'previous_hash': ' ',
    'index': 0,
    'transactions': [],
    'nonce': 23
}

# Blockchain initialized with the genesis block
blockchain = [genesis_block]

# Function to get the last block in the blockchain
def get_last_value():
    return blockchain[-1]

# Function to add a new transaction to the list of open transactions
def add_value(recipient, sender, amount=1.0, open_transactions=None):
    if open_transactions is None:
        open_transactions = []
    transaction = {
        'sender': sender,
        'recipient': recipient,
        'amount': amount
    }
    open_transactions.append(transaction)

# Function to get transaction details from the user
def get_transaction_value():
    tx_sender = input("Enter the sender: ")  # Changed raw_input to input for Python 3
    tx_recipient = input("Enter the recipient of the transaction: ")
    tx_amount = float(input('Enter your transaction amount: '))
    return tx_sender, tx_recipient, tx_amount

# Function to get the user's choice
def get_user_choice():
    user_input = input("Please give your choice here: ")
    return user_input

# Function to print all blocks in the blockchain
def print_block():
    for block in blockchain:
        print("Here is your block: ")
        print(block)

# Print the blockchain
print_block()