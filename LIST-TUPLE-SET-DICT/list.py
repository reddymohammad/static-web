l1=[10,20,30,10,20,30]
l2=[40,50,60]
l1.count(10)
print(l1.count(10))
print(l1.index(10))

l1.append("reddy")
print(l1)

l1.extend(l2)
print(l1)


print(l1.remove(20))
print(l1)

l1.clear()
print(l1)


del l1
print(l1)     # NameError
