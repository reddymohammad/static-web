# extract 

import requests
user_response=requests.get("https://jsonplaceholder.typicode.com/users")
users=user_response.json()
status_code=user_response.status_code



