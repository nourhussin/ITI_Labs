while True:
    hours = float(input("Please enter number of hours per week:"))
    salary = float(input("Please enter your salary rate: "))

    if hours > 40:
        print("You got a bonus! and your salary this month is ", salary*40 + salary*(hours-40))
    else:
        print("You didn't get any bonus. Your salary this month is", salary*hours)