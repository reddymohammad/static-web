#Extract data from Rest API URL
import requests 
user_resp=requests.get('https://jsonplaceholder.typicode.com/users')
users=user_resp.json()

#Transform according to requirement
users_json=[]
users_csv=[]
for user in users:
    users_json.append({"userid":user['id'],
                        "username":user['username'],
                        "location":user['address']['city'],
                        "company":user['company']['name']
                       })
    users_csv.append([user['id'],
                      user['username'],
                      user['address']['city'],
                      user['company']['name']])    


print(users_json)


#load 
import json
fp1=open('users.json', 'w')
json.dump(users_json, fp1)
print("new json created successfully")
fp1.close()


#load
import csv
fp2=open('users.csv', 'w',newline='')
csv_writer=csv.writer(fp2)
csv_writer.writerow(['userid', 'username', 'location', 'company'])
csv_writer.writerow(users_csv)
print("new csv created successfully")
fp2.close()