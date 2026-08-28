
import requests
rest_api_url='https://jsonplaceholder.typicode.com/users'
user_resp=requests.get(rest_api_url)
users=user_resp.json()

print(len(users))
print(type(users))


#Tranform users data according mysql users table
users_data=[]

for user in users:
    users_data.append((
                      user['id'],
                             user['username'],
                             user['address']['city'],
                             user['email']
    ))
#Load users_data into mysql users table

import mysql.connector
dbcon=None 
cursor=None 
try:
    dbcon=mysql.connector.connect(host='localhost',
                                      user='root',
                                      password='Reddybasha@123',
                                      database='db16') 
    cursor=dbcon.cursor();
    sql_st='''
              INSERT INTO USERS
              VALUES
              (%s,%s,%s,%s);
    
              '''
    cursor.executemany(sql_st,users_data) 
    dbcon.commit()
    print("Data inserted")


except mysql.connector.Error as err:
    print(err)
except Exception as err:
    print(err)

finally:
    if cursor is not None:
        cursor.close()
    if dbcon is not None and dbcon.is_connected():
        dbcon.close()