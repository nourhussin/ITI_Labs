import string
while True:
    sentence = input("Please enter a sentence: ")
    words = []
    word  = ""
    for char in sentence:
        if char not in " ,.!?_":
            word += char
        else:
            if word:
                words.append(word)
                word = ""
    if word:
        words.append(word)
        word = ""
    print(words)