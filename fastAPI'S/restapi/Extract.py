import requests 
user_resp = requests.get('https://jsonplaceholder.typicode.com/users')
users = user_resp.json()
print(user_resp.status_code)

print(len(users))





