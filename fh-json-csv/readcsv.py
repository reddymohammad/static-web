import csv
fp=open('employees.csv','r')

csv_reader=csv.reader(fp)
employees=list(csv_reader)

#print(employees)
'''
How to exclude csv header? using list slicing
'''

for emp in employees[1:]:
    print(emp[0],": ",emp[1])