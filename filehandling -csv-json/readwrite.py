# filepointer(filepaath, mode)

fp1=open("data.text","r")
fp2=open("data.text","w")
data=fp1.read()
print(data)
fp2.write(data)

print("New file created successful")

