

import json

emp_json_str = '''
[
    {"eid":101,"avail":true},
    {"eid":102,"avail":false}
]
'''

emp_list = json.loads(emp_json_str)
print(emp_list)

for emp in emp_list:
    print(emp['eid'])

