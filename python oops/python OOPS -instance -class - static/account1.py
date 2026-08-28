class account:
  min_bal=500

  def __init__(self,id,name,amount):
    self.acc_id=id
    self.acc_name=name
    self.acc_bal=amount

  def deposit(self,amount):
        self.acc_bal=self.acc_bal+amount
  def withdrawl(self,amount):
        self.acc_bal=self.acc_bal-amount
  def get_bal(self):
        return self.acc_bal-self.min_bal

a1 = account(101,"reddy",5000)
a2 = account(102,"pavan",6000)
a3 = account(103,"ravi",7000)

print(a1. __dict__)
print(a2. __dict__)
print(a3. __dict__)
