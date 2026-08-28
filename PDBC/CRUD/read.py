import mysql.connector 
dbcon=None 
cursor=None 
try:
    dbcon=mysql.connector.connect(host='localhost',
                                  user='root',
                                  password='Reddybasha@123',
                                  database='db15')
    cursor=dbcon.cursor()
    sql_st='''  select *from employees '''

    cursor.execute(sql_st)
    employees=cursor.fetchall()
    for emp in employees:
        print(emp)   

except mysql.connector.Error as err:
    print(err)
except Exception as err:
    print(err)

finally:
    if cursor is not None:
        cursor.close()

    if dbcon is not None and dbcon.is_connected():
        dbcon.close()