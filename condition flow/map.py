# withoout map
numbers=[10,20,30,40]
new_numbers=[]

for num in numbers:
    new_numbers.append(num + 1)

print(new_numbers)

#with map 

numbers=[10,20,30,40,50]

def add_one(num):
    return num+1

map_obj=map(add_one, numbers)

new_numbers=list(map_obj)

print(new_numbers)


#with lambda

numbers=[10,20,30,40,50]
map_obj=map(lambda n:n+1, numbers)
new_numbers=list(map_obj)
print(new_numbers)
print(list(map(lambda x:x+1,[10,20,30,40])))





