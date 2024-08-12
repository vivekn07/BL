class Bank:
    def __init__(self):
        # Initialize the balance to 0.0
        self.balance = 0.0
        print("The account is created")

    def deposit(self):
        # Prompt the user to enter the amount to deposit
        amount = float(input("Enter the amount to deposit: "))
        # Add the deposited amount to the balance
        self.balance = self.balance + amount
        print("Deposit successful. Balance in the account is %f" % self.balance)

    def withdraw(self):
        # Prompt the user to enter the amount to withdraw
        amount = float(input("Enter the amount to withdraw: "))
        # Check if the balance is sufficient for the withdrawal
        if self.balance >= amount:
            # Deduct the withdrawn amount from the balance
            self.balance = self.balance - amount
            print("Withdrawal successful. Balance is %f" % self.balance)
        else:
            print("Insufficient balance")

    def enquiry(self):
        # Display the current balance
        print("Balance in the account is %f" % self.balance)

# Create an instance of the Bank class
acc = Bank()
# Perform a deposit operation
acc.deposit()
# Perform a withdrawal operation
acc.withdraw()
# Check the balance
acc.enquiry()