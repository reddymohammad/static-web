from pymongo import MongoClient
try:
    client=MongoClient('mongodb://localhost:27017/')
    db=client['dbone']
    users_col=db['users']
    users_col.insert_one({"uid":101,"uname":"Rahul"}) 
    print("Document Inserted successfully")

except Exception as err:
    print(err)