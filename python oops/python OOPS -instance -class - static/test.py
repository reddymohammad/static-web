class Test:
  def __init__(self):
     self.b=20
     self.c=30
  def m1(self):
     self.d=40
  @classmethod
  def m2(cls):
     Test.g=70

t1=Test()
t2=Test()

t2.m1()



print(t1.__dict__)
print(t2.__dict__)
print(Test.__dict__)

print("Instance variable")
t2.e=50
t1.f=60

print(t1.__dict__)
print(t2.__dict__)

print("class variable")
Test.m2()
print(Test.__dict__)


