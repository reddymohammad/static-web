import json

employees_list=[{'eid': 101, 'ename': 'RG', 'avail': True, 'loc': None}, {'eid': 102, 'ename': 'SG', 'avail': False}, {'eid': 103, 'ename': 'PG', 'avail': False}, {'eid': 104, 'ename': 'Modi', 'avail': True}, {'eid': 105, 'ename': 'Amith', 'avail': True}]

print(type(employees_list))

emp_json_str=json.dumps(employees_list)
print(type(emp_json_str))
print(emp_json_str)