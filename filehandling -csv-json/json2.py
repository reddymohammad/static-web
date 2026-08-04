# json to csv convert 

#ceated json file to csv File

import json
import csv
fp1=open('users.json','r')
users=json.load(fp1)
# read

#tranform
male_users=[]
female_users=[]

for user in users:
    if user['gender']=='Male' :
        male_users.append(user)
    elif user['gender']=='Female':
        female_users.append(user)



#load

fp2=open('Male.csv','w')
fp3=open('Female.csv','w')
json.dump(male_users,fp2)
json.dump(female_users,fp3)
print("New json to csv file successfully")

fp1.close()
fp2.close()
fp3.close()