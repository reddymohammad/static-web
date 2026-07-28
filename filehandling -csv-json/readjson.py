import json 

fp1=open('employees.json','r')

employees_list=json.load(fp1)
print(len(employees_list))

for emp in employees_list:
    print(emp['ename'])