employees = [
	{"eid": 1, "ename": "Alice", "gender": "F"},
	{"eid": 2, "ename": "Bob", "gender": "M"},
	{"eid": 3, "ename": "Charlie", "gender": "M"},
	{"eid": 4, "ename": "Diana", "gender": "F"},
	{"eid": 5, "ename": "Ethan", "gender": "M"},
	{"eid": 6, "ename": "Fiona", "gender": "F"},
	{"eid": 7, "ename": "George", "gender": "M"},
	{"eid": 8, "ename": "Hannah", "gender": "F"},
	{"eid": 9, "ename": "Ian", "gender": "M"},
	{"eid": 10, "ename": "Jane", "gender": "F"},
	{"eid": 11, "ename": "Kevin", "gender": "M"},
	{"eid": 12, "ename": "Laura", "gender": "F"},
	{"eid": 13, "ename": "Michael", "gender": "M"},
	{"eid": 14, "ename": "Nina", "gender": "F"},
	{"eid": 15, "ename": "Oscar", "gender": "M"},
	{"eid": 16, "ename": "Paula", "gender": "F"},
	{"eid": 17, "ename": "Quentin", "gender": "M"},
	{"eid": 18, "ename": "Rachel", "gender": "F"},
	{"eid": 19, "ename": "Steve", "gender": "M"},
	{"eid": 20, "ename": "Tina", "gender": "F"},
]

#print employee names using for and while loop
""" 
for emp in employees:
    print(emp['ename'])
      """

i=10
while i<=len(employees)-1:
    print(employees[i]['ename'])
    i=i+1


