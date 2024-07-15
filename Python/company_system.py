names = []
salaries = []
departments = []
IDs = []
while True:
    print("1-Add Employee\n2-Search By Name\n3-Delete Employee\n4-Show All Employee\n5-Quit")
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

        names.append(name)
        salaries.append(salary)
        departments.append(department)
        IDs.append(ID)

    elif(operation == 2):
        name = input("Enter the name: ")
        try:
            found = names.index(name)
        except:
            found = -1

        if found != -1:
            print("Data is found\n{}\t{}\t{}\t{}".format(names[found],salaries[found],departments[found],IDs[found]))
        else:
            print("Data is not found")
    elif(operation == 3):
        name = input("Enter the name: ")
        try:
            found = names.index(name)
        except:
            found = -1

        if found != -1:
            print("Deleting information")
            del names[found]
            del salaries[found]
            del departments[found]
            del IDs[found]
        else:
            print("Data is not found")
    elif(operation == 4):
        print("Printing all data")
        for iterator in range(len(names)):
            print("{}\t{}\t{}\t{}".format(names[iterator],salaries[iterator],departments[iterator],IDs[iterator]))
    elif(operation == 5):
        print("Quiting the program")
        break
    else:
        print("Invalid Operation")
