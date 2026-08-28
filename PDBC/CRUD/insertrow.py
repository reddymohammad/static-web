import mysql.connector 
dbcon=None 
cursor=None 
try:
    dbcon=mysql.connector.connect(host='localhost',
                                  user='root',
                                  password='Reddybasha@123',
                                  database='db15') 
    print(dbcon.is_connected())
    if dbcon.is_connected():
        print("Connection Established")
    else:
        print("Not Established")
    cursor=dbcon.cursor()
    #execute sql stateement - using cursor
    sql_st='''
            insert into employees
            values
            (101,'Rahul',45000.45,'Male');
           '''
    cursor.execute(sql_st)
    dbcon.commit()
    print("Data Inserted successfully")

except mysql.connector.Error as err:
    print(err)
except Exception as err:
    print(err)

finally:
    if cursor is not None:
        cursor.close()

    if dbcon is not None and dbcon.is_connected():
        dbcon.close()