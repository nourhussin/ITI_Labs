while True:
    GPA = float(input("Please enter your GPA: "))
    Exp = int(input("Please enter years of experience: "))
    Master = int(input("Do you have a master (0 for no and 1 for yes): "))
    MBA = int(input("Do you have an MBA (0 for no and 1 for yes): "))

    if(GPA>3.8 and Master and MBA and Exp>15):
        print("Manager")
    elif(GPA>3.6 and Master and 15>=Exp>10):
        print("Staff Senior")
    elif(GPA>3.6 and 10>=Exp>5):
        print("Senior")
    elif(GPA>3.4 and 10>=Exp>3):
        print("Team Lead Senior")
    elif(GPA>3 and Exp>1):
        print("Standard")
    elif(GPA>2.5 and Exp<1):
        print("Junior")
    else:
        print("Rejected!")