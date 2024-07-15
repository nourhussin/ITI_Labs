def add_employee(users, user_id, name, salary, department):
    users[name] = {'ID': user_id, 'salary': salary, 'department': department}

information = {}
number_of_employee = len(information)
while True:
    print("1-Add Employee\n2-Search By name\n3-Delete Employee\n4-Show All Employee\n5-Quit\n-----------------------------------")
    try:
        operation = int(input("Choose Operation: "))
    except ValueError:
        print("Cannot cast str to int")
        operation = 0

    if(operation == 1):
        name = input("Enter the name: ")
        salary = input("Enter the salary: ")
        department = input("Enter the department: ")
        ID = input("Enter the ID: ")
        add_employee(information, ID, name, salary, department)

    elif(operation == 2):
        name = input("Enter the name: ")
        try:
            name in information[name]
            print("Printing data of: ",name)
            print(information[name])
        except:
            print("Data is not found")

    elif(operation == 3):
        name = input("Enter the name: ")
        try:
            name in information[name]
            print("Deleting information")
            del information[name]
        except:
            print("Data is not found")

    elif(operation == 4):
        print("Printing all data")
        for key, value in information.items():
            print("{}: {}".format(key,value)) 

    elif(operation == 5):
        print("Quiting the program")
        break
    else:
        print("Invalid Operation")
