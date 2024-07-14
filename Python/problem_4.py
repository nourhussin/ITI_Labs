while True:
    score = int(input("Please enter your grade (1:100)scale:"))
    if (score >= 85 and score <= 100):
        grade ='A'
    elif (score >= 75 and score < 85):
        grade ='B'
    elif (score >= 65 and score < 75):
        grade ='C'
    elif (score >= 60 and score < 65):
        grade ='D'
    else:
        grade ='F'

    print("Your grade is : ",grade)