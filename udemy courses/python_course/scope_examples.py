#first example of global and local variables#
"""x = 25
def my_func():
    x = 50
    return x
print(x)
print(my_func())
my_func()
print(x)
"""

#  LOCAL
lambda x: x**2

# ENCLOSING FUNCTION LOCALS
"""name = "This is a global name" #because it is not inside of a FUNCTION

def greet():
    name = "Sandy"
    def hello():
        print("Heloo " + name)
    hello() #da bi funkcionisala funkcija unutar funkcije moras da pozoves ugnjezdenu fju izvan nje
greet() #Hello Sandy"""

#using 'global' var name

x = 20
def func():
    global x #nije uvek preporucljivo
    x = 1000
print("before", x)
func()
print("after", x)
