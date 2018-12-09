def sumOfMultiples(numbers, max):
    total = 0

    for i in range(1, max+1):
        for number in numbers:
            if i % number == 0:
                total += i
                break

    return total

def validateSingleNumber(raw_string):
    try:
        value = int(raw_string)
    except ValueError:
        raise ValueError("%s is not an integer." %raw_string)

    if value <= 0:
        raise ValueError("All numbers must be greater than zero")
    return value

def proccessInput(userInput):
    numbers = []

    for raw_string in userInput.split(", "):
        value = validateSingleNumber(raw_string)
        if value not in numbers:
            numbers.append(value)
    return numbers
def getUserInput():
    userInput = input("Enter a comma-seperated list of positive integers: ")
    proccessedInput = proccessInput(userInput)
    return proccessedInput

def main(): 
    success = False
    try:
        numbers = getUserInput()
        success = True
    except Exception as e:
        print(e)
    except KeyboardInterrupt:
        print("\n Goodbye good sir!")
    if success:
        max = 1000
        result = sumOfMultiples(numbers, max)
        print("The sum of the mupltiples %s up to %d is %d" % (numbers, max, result))

if __name__ == '__main__':
    main()