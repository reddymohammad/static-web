class Account:
    def open_acc(self):
        print("Account Opened success")

    def deposit(self):
        print("Amount Deposited") 

    def withdrawl(self):
        print("Amount withdrawl Successfully") 

    def get_bal(self):
        print("Server Busy")
    def close_acc(self):
            print("-ve Bal! Add more funds")

a1=Account()
a1.open_acc()
a1.deposit()
a1.withdrawl()
a1.get_bal()
a1.close_acc()
