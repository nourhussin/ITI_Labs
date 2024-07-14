while True:
    number = float(input("Please enter a number between 1.5 and 150 : "))
    if(number>150 or number <1.5):
        print("Error! Not a valid number")
    else:
        print("Done")