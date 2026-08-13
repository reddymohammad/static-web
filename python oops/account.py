class Account:
    def __init__(self, id, name, amount):
        self.acc_id = id
        self.acc_name = name
        self.acc_bal = amount

    def deposit(self, amount):
        pass

a1 = Account(1, "RM", 5000)
a2 = Account(2, "SG", 6000)
a3 = Account(3, "PG", 7000)

print(a1.__dict__)
print(a2.__dict__)
print(a3.__dict__)