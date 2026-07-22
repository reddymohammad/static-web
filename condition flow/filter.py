#without filter
numbers=[1,2,3,4,5,6,7,8,9,10,11,12]
even_numbers=[]

for num in numbers:
    if num%2==0:
        even_numbers.append(num)

print(even_numbers)

#with lambda 

print(list(filter(lambda n:n%2==0,[1,2,3,4,5,6,7,8,9,10])))


# with filter
numbers=[1,2,3,4,5,6,7,8,9,10,11,12]
def verify(num):
    return num%2==0
print(list(filter(verify, numbers)))

