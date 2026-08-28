import mysql.connector 
dbcon=None 
cursor=None 
try:
    pass 

except mysql.connector.Error as err:
    print(err)
except Exception as err:
    print(err)

finally:
    if cursor is not None:
        cursor.close()

    if dbcon is not None and dbcon.is_connected():
        dbcon.close()