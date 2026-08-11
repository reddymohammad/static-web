#extract the data from restapi

import requests,json,csv
product_resp = requests.get('https://dummyjson.com/products')
products= product_resp.json()['products']


