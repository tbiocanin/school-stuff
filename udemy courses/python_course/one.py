def func():
    print('func in one.py')

print("TOP LEVEL ONE.PY")

if __name__ == '__main__':
    print("ONE.PY IS BEING RUN DIRECTLY")
else:
    print("one.py has been imported")
