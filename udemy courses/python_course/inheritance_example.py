#INHERITANCE
"""class Animal(): #base class

    def __init__(self):
        print("ANIMAL CREATED")

    def whoAmI(self):
        print("ANIMAL")

    def eat(self):
        print("EATING")

class Dog(Animal):

    def __init__(self):
        #Animal.__init__(self) #inicijalizuj zivotinju
        print("DOG CREATED")

    def bark(self):
        print("WOOF")
#myAnimal = Animal()
myAnimal = Dog()
myAnimal.bark()
myAnimal.whoAmI()
myAnimal.eat()
"""
#SPECIAL METHODS
class Book():
    def __init__(self, title,author,pages):
        self.title = title
        self.author = author
        self.pages = pages

    def __str__(self): #string representation
        return "Title: {}, Author: {}, Pages: {}".format(self.title, self.author, self.pages)

    def __len__(self): #length
        return self.pages

    def __del__(self): #yetus yetus book deletus function
        print("a book is deleted!")

b = Book("python", "Hose", 200)
del b
