balance = 40000
password =1234
while True:
    try:
        pin_number = int(input("Enter your 4 digit Pin number:"))
    except ValueError:
        print("Error! String is detected")
        pin_number = 0
    if(pin_number == password):
        break


while True:
    print("1- Withdraw\n2- Balance Inquiry\n3- Fast Cash\n4- Quit")
    try:
        proccess = int(input("Choose Process: "))
    except ValueError:
        print("Can not cast str to int")

    if(proccess == 1):
        try:
            withdraw = int(input("Enter withdraw amount multiple of 100: "))
        except ValueError:
            print("Cannot cast str to int")
        if (withdraw%100) != 0:
            print("Invalid withdraw")
        else:
            balance -= withdraw
            if(balance>0):
                print("TRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR\nRemaining Balance: ",balance)
            else:
                balance += withdraw
                print("You don't have enough cash: ",balance)
            
    elif(proccess == 2):
        print("Your balance is: ",balance)
    elif(proccess == 3):
        print("1- 500$\n2- 1000$\n3- 5000$\n4- 10000$\n5- 50000$")
        try:
            fast_cash = int(input("Choose Amount: "))
        except ValueError:
            print("Can not cast str to int")
            fast_cash = 9

        if(fast_cash == 1):
            balance -= 500
            if(balance>0):
                print("TRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR\nRemaining Balance: ",balance)
            else:
                balance +=500
                print("You don't have enough cash: ",balance)
        elif(fast_cash == 2):
            balance -= 1000
            if(balance>0):
                print("TRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR\nRemaining Balance: ",balance)
            else:
                balance +=1000
                print("You don't have enough cash: ",balance)
        elif(fast_cash == 3):
            balance -= 5000
            if(balance>0):
                print("TRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR\nRemaining Balance: ",balance)
            else:
                balance +=5000
                print("You don't have enough cash: ",balance)
        elif(fast_cash == 4):
            balance -= 10000
            if(balance>0):
                print("TRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR\nRemaining Balance: ",balance)
            else:
                balance +=10000
                print("You don't have enough cash: ",balance)
        elif(fast_cash == 5):
            balance -= 50000
            if(balance>0):
                print("TRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR\nRemaining Balance: ",balance)
            else:
                balance +=50000
                print("You don't have enough cash: ",balance)
        else:
            print("Invalid Amount")
    elif(proccess == 4):
        print("Program is quiting")
        break
    else:
        print("Invalid Process")



