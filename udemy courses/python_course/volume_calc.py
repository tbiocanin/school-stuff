def RaiseErrorMessages(userInput):
    try:
        value = float(userInput)
    except ValueError:
        raise ValueError("%s is not a number" % userInput)
    
    if value <= 0:
        raise ValueError("%s the value must be greater than zero" % userInput)
    return value

def UserDimensions(*names):
    
    output_vals = []

    for name in names:
        userInput = input(name + ": ")
        convertedInput = RaiseErrorMessages(userInput)
        output_vals.append(convertedInput)
    return output_vals

def main():
    print("this program is used to calculate volumes of a box")

    success = False
    try:
        length, width, height = UserDimensions('Length', 'Width', 'Height')
        success = True
    except KeyboardInterrupt:
        print("\n Goodbye.")
    except ValueError as e:
        print(e)
    
    if success:
        volume = length * width * height
        print("\n The volume of the box is %.2f." % volume)

if __name__ == "__main__":
    main()