#int
a=10
print(a)
b=11
a=12
print(a)
print(id(a))
print(id(b))
print(type(a))



#Float
a=10.0
print(a)
print(id(a))
print(type(a))


a=10
b=20.0
print(a+b)


a=10
b=float(a)
print(b)


a=1+5j
print(a)
print(type(a))



a=True 
print(a)
print(type(a))
b=False 
print (b)
print(type(b))

#string
a='Hello world!'
print(a)
print(type(a))
print(a[-1])



a=(1,2,3,'Hello World')
print(a)
print(a[-1])




a={1,2,3,4,5,6,7,8,9,10,'hello',11,12,13,14,15,16,17,18,19,110}
print(a)


a=frozenset([1,2,3,4,5,6,7,8,9])
b=frozenset([5,6])
#Union
print(a|b)
print(a.union(b))
#Intersection
print(a&b)
print(a.intersection(b))
#Difference
print(a-b)
print(a.difference(b))
print(a.issubset(b))
print(a.issuperset(b))




for i in range(100,4-1,-1):
    print(i, end="*")

a=None
print(a)
print(type(a))
print(id(a))



b=set()
c={1,2,3}
a={}
d={'a':123,'b':'hello world!'}

print(type(b))
print(type(c))
print(type(a))
print(type(d))

d={'a':123,'b':'hello world!'}
print(d.keys())
print(d.values())
print(d['a'])

#batearray
a=bytearray(b'hello')
print(a)
print(type(a))
a[0]=81
print(a)


text='python'
b=bytearray(text,'utf-8')
print(b)
print(b.decode())
