import mysql.connector
dbcon=None 
cursor=None 
try:
    dbcon=mysql.connector.connect(host='localhost',
                                  user='root',
                                  password='Reddybasha@123',
                                  database='db15') 
    cursor=dbcon.cursor()
    sql_st='''
            create table employees(
            eid int,
            ename varchar(32),
            esal float,
            gender varchar(32),
            primary key(eid)
            );
           '''
    cursor.execute(sql_st)
    print("New Table created successfully")
except Exception as err:
    print(err)

finally:
    #close cursor
    if cursor is not None:
        cursor.close()
    if dbcon is not None:
        dbcon.close()
