import json
emp_json_str='''
        [{"eid":101,"ename":"RG","avail":true,"loc":null},
         {"eid":102,"ename":"SG","avail":false},
         {"eid":103,"ename":"PG","avail":false},
         {"eid":104,"ename":"Modi","avail":true},
         {"eid":105,"ename":"Amith","avail":true}
        ]
        '''
emp_list=json.loads(emp_json_str)
print(emp_list)

for emp in emp_list:
    print(emp['ename'])