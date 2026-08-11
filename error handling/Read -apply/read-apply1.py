#case 2 error handling
fp=None
try:
    fp=open("data.txt", "r")
    data=fp.read()
    print(data)
except FileNotFoundError as error:
    print("File not found")

finally:
    print("finally block will execute always")

