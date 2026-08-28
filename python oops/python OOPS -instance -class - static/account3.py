class Account:
    min_bal=500
    bank="SBI"
    
    def __init__(self,id,name,amount):
        self.acc_id=id 
        self.acc_name=name
        self.acc_bal=amount

    def deposit(self,amount):
        self.acc_bal=self.acc_bal+amount

    def withdrawl(self,amount):
        self.acc_bal=self.acc_bal-amount

a1=Account(101,'RG',5000)
a2=Account(102,'SG',6000)
a3=Account(103,'PG',7000)



a1.deposit(500)
a2.deposit(600)
a3.deposit(700)

a1.withdrawl(20)

print(a1.__dict__)
print(Account.__dict__)