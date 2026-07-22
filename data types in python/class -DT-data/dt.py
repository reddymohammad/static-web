eid=101
esal=45000.45
ename="Rahul"
avail=False
c=10+20j

eids=[101,102,103,104]
uids=(101,102,103,104)
cids={101,101,101,101,102}
emp={'eid':102,'ename':'sonia'}

b=bytes([10,20,30,40])
ba=bytearray([10,20,30,40])
fz=frozenset({10,10,10,10})
r=range(100)
n=None



#Read Variable

print(type(eid))
print(type(esal))
print(type(ename))
print(type(avail))
print(type(c))
print(type(eids))
print(type(uids))
print(type(cids))
print(type(emp))
print(type(b))
print(type(ba))
print(type(fz))
print(type(r))
print(type(n))

#update 
eid=102
esal=50000.50
ename="Sonia"
avail=True
c=20+40j
eids=[301,302,303,304]
uids=(301,302,303,304)
cids={301,301,301,301,302}
emp={'eid':302,'ename':'reddy'}
b=bytes([20,30,40,50])
ba=bytearray([20,30,40,50])
fz=frozenset({20,20,20,20})
r=range(100)
n=None


print(eid)
print(esal)
print(ename)
print(avail)
print(c)
print(eids)
print(uids)
print(cids)
print(emp)
print(b)
print(ba)
print(fz)
print(r)
print(n)

#delete 
del eid
del esal
del ename
del avail
del c
del eids
del uids
del cids
del emp
del b
del ba
del fz
del r
del n


print("eid")
print("esal")
print("ename")
print("avail")
print("c")
print("eids")
print("uids")
print("cids")
print("emp")
print("b")
print("ba")
print("fz")
print("r")
print("n") 
 