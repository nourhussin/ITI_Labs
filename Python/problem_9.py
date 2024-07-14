loop = [9,41,12,3,74,15]
iterator = 0
for iterator in loop:
    if iterator > 20:
        print("Deleting ", iterator)
        loop.remove(iterator)
print("Finished and the loop now is ",loop)