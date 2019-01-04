"""class Dog():

    #CLASS OBJECT ATTRIBUTE
    species = "mammal"

    def __init__(self, breed, name):
        self.name = name
        #self.name referise na samu klasu Dog()
        #desna strana jednakosti ukazuje na argument funkcije
        self.breed = breed
        pass

myDog = Dog(breed = "Labrador", name="sammy")
otherDog = Dog(breed="Huskie", name="pero")
print(myDog.breed)
print(otherDog.name)
#print(myDog.species)
"""
#PRIMER SA METODAMA
class Circle():
    pi = 3.14

    def __init__(self, radius=1):
        self.radius = radius

    def area(self): #self keyword is telling u that it is a function of a class
        return self.radius* self.radius * Circle.pi

    def set_radius(self, new_param):
        self.radius = new_param

myCircle = Circle(3)
myCircle.set_radius(100)
print(myCircle.area())
