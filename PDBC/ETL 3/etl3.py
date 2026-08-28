import requests
rest_api_url='https://dummyjson.com/products'
product_resp=requests.get(rest_api_url)
products=product_resp.json()['products']


print(len(products))
print(type(products))



#tranform

beauty_data=[]

for product in products:
  if product['category']=="beauty":
    beauty_data.append((product['id'],product['title'],product['price'],product['category'],product['discountPercentage']))


#load
import mysql.connector
dbcon=None 
cursor=None 
try:
    dbcon=mysql.connector.connect(host='localhost',
                                      user='root',
                                      password='Reddybasha@123',
                                      database='db17') 
    cursor=dbcon.cursor();
    sql_st='''
              INSERT INTO products
              VALUES
              (%s,%s,%s,%s,%s);
    
              '''
    cursor.executemany(sql_st,beauty_data) 
    dbcon.commit()
    print(cursor.rowcount,"Data inserted successfuly")


except mysql.connector.Error as err:
    print(err)
except Exception as err:
    print(err)

finally:
    if cursor is not None:
        cursor.close()
    if dbcon is not None and dbcon.is_connected():
        dbcon.close()


