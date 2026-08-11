try:
    a=int(input("Enter First No:"))
    b=int(input("Enter Second No:"))
    print(a+b)
    print(a*b)
    print(a/b)

except ZeroDivisionError as err:
    print(err)
except ValueError as err:
    print(err)


finally:
    print("finally block will execute always") 


print("GM")
print("GA")
print("GN")
