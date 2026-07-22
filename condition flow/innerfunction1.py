def Outer():
    print('Outer function started')

    def login():
        print('login sucess')

    def inner():
        print('inner function')
    return  100 
   

x=Outer()
print(x)
print(type(x))



def Outer():
    print('Outer function started')

    def login():
        print('login sucess')

    def inner():
        print('inner function')
    return  inner()
   

inner=Outer()
print(inner)
print(type(inner))

