def createMultiplicationTable(width, height):
    output = ""
    numChars = len(str(width*height)) +1
    for i in range(1, height+1):
        for j in range(1, width+1):
            product = i*j

            productStr = str(product)
            productStr = productStr.rjust(numChars, ' ')
            output += productStr
        output += "\n\n"

    return output
def processInput(userInput):
    try:
        value = int(userInput)
    except ValueError:
        raise ValueError("%s is not a number" %userInput)
    if value <= 0:
        raise ValueError("The value must be greater than 0!")
    return value
def getUserInput():
    values = []
    for prompt in ('Width', 'Height'):
        userInput = input(prompt + ": ")
        proccessedInput = processInput(userInput)
        values.append(proccessedInput)
    return values

def main():
    success = False
    try:
        width, height = getUserInput()
        success = True
    except Exception as e:
        print(e)
    except KeyboardInterrupt:
        print("\n Goodbye!")
    if success:
        output = createMultiplicationTable(width, height)
        print('\n\n' + output)

if __name__ == '__main__':
    main()