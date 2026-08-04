import csv
fp=open("employees.csv","r")
csv_reader=csv.reader(fp)
employees=list(csv_reader)

print(employees["ename"])