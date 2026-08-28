# extract 

import requests,json
user_response=requests.get("https://jsonplaceholder.typicode.com/users")
users=user_response.json()
status_code=user_response.status_code


#tanform -for json file

users_json=[]


for user in users:
  users_json.append({
    "uid": user["id"],
    "uname": user["name"],
    "email": user["email"],
    "city": user["address"]["city"]
})


#load

fp1=open("users.json", "w")
json.dump(users_json,fp1)

print("new json file sucessfuly")