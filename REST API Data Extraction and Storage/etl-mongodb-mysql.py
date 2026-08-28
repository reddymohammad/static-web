# extract 

import requests, json,csv
import pymongo
import mysql.connector 
user_response=requests.get("https://jsonplaceholder.typicode.com/users")
users=user_response.json()
status_code=user_response.status_code


#tanform -for json file

users_json=[]
users_csv=[]



for user in users:
  users_json.append({
    "uid": user["id"],
    "uname": user["name"],
    "email": user["email"],
    "city": user["address"]["city"]
})
  users_csv.append([user['id'],
                      user['username'],
                      user['email'],
                      user['address']['city'],])  



#load

fp1=open("users.json", "w")
json.dump(users_json,fp1)

print("new json file sucessfuly")

# load for csv file

fp2=open("users_csv", "w", newline="")
csv_writer=csv.writer(fp2)
csv_writer.writerow(['userid', 'uname', 'email', 'city'])
csv_writer.writerow(users_csv)
print("new csv created successfully")

#Load into mongodb users collection

try:
    client=pymongo.MongoClient('mongodb://localhost:27017/')
    db=client['toxic']
    users_col=db['users']
    users_col.insert_many(users_json)
    print("Data Inserted into MongoDB User collections successfully")
except:
    pass
finally:
    pass


#load into mysql


try:

    dbcon = mysql.connector.connect(
        host="localhost",
        user="root",
        password="Reddybasha@123",
        database="dbtoxic"
    )

    cursor = dbcon.cursor()

    sql_st = """
        INSERT INTO users
        VALUES (%s, %s, %s, %s)
    """

    cursor.executemany(sql_st, users_csv)

   
    dbcon.commit()

    print("Data inserted into MySQL successfully")

except :
    pass

finally:
    pass
 