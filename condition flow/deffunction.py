def login(name,status):
     if name =='PG' and status==True:
          return "login sucess"
     else:
          return "login Failed"

msg1 =login("RG", False)
print(msg1)

msg2 =login("SG", True)
print(msg2)

msg3 =login("PG", True)
print(msg3)


