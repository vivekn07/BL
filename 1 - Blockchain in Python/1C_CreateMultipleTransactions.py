# Initialize the blockchain as an empty list
blockchain = []

# Function to get the last value in the blockchain
def get_last_value():
    return blockchain[-1]

# Function to add a new transaction to the blockchain
def add_value(sender, recipient, amount=1.0):
    transaction = {
        'sender': sender,
        'recipient': recipient,
        'amount': amount
    }
    blockchain.append(transaction)

# Function to get transaction details from the user
def get_transaction_value():
    tx_sender = input('Enter the sender: ')
    tx_recipient = input('Enter the recipient of the transaction: ')
    tx_amount = float(input('Enter your transaction amount: '))
    return tx_sender, tx_recipient, tx_amount

# Function to print all blocks in the blockchain
def print_block():
    for block in blockchain:
        print("Here is your block")
        print(block)

# Main loop to keep adding transactions
again = True
while again:
    tx = get_transaction_value()
    s, r, a = tx
    add_value(s, r, a)
    print(blockchain)
    more = input('Add more block (Y/N)? ')
    if more.lower() == 'y':
        again = True
    else:
        again = False