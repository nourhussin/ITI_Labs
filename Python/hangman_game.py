import string

def replace_letter(s, index, new_letter):
    return s[:index] + new_letter + s[index+1:]

def find_repeated_indexes(s, char):
    return [index for index, c in enumerate(s) if c == char]

def is_invalid_characters(s):
    invalid_characters = set('!@#$%^&*()-_=+[{]}\\|;:\'",<.>/?`~ 1234567890')
    return any(char in invalid_characters for char in s)


while True:
    print("-------------------------------------------------------\nWelcome to Hangman Game")
    word   = input("Enter the word you want the other user to guess:")
    word = word.lower()
    if(len(word) > 6 or len(word) < 2):
        print("Error! Invalid length for the game")
        word =[]
    elif(is_invalid_characters(word)):
        print("Error! Invalid character is detected")
        word =[]
    print("---------------------------------------------------------")
    guessing = '-'*len(word)
    attempts = 6
    finished = 0
    history_letters = []

    while attempts and (not finished) and word:

        print("Guess the word: {}".format(guessing))
        char = input("Enter a Character Please: ")
        char = char.lower()
        if (is_invalid_characters(char)):
            print("Error! Invalid character is detected")
        elif len(char)>1:
            print("Error! Entered more than one character")
        else:
            if char in history_letters:
                print("The letter is entered before: ",char,"\nRemaining Attempts: ",attempts)
            else:
                history_letters.append(char)

                found = find_repeated_indexes(word,char)
                if(len(found) == 0):
                    attempts -= 1
                    print("Missed :( Please Try Again!\nRemaining Attempts: ",attempts)
                else:
                    for iterator in range(len(found)):
                        guessing = replace_letter(guessing,found[iterator],char)
                        if guessing == word:
                            finished = 1
                            print("------------------------------------------------")
                            print("You Won :) ")
    print("END OF THE GAME")
    