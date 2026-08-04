
#Extract
import csv 
fp1=open("users.csv","r")
csv_reader=csv.reader(fp1)
users=list(csv_reader)
#how to exclude csv heaer
users=users[1:]
print(len(users))

#Transform
male_users=[]
for user in users:
    if user[2]=="Male":
        male_users.append((user[0],user[1],user[2]))
print(len(male_users))

#Load

fp2=open("male_users.csv","w")
csv_writer=csv.writer(fp2)
csv_writer.writerow(["USER ID","USERNAME","GENDER"])
csv_writer.writerows(male_users)
print("new csv file created successfully")

