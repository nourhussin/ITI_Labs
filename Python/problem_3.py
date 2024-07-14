x1 = 3
x2 = 5

addition = x1 + x2
multiplication = x1 * x2
print("Integer Format-------------------------\nAddition ={} is{}\t\tMultiplication ={} is{}".format(addition,type(addition),multiplication,type(multiplication)))

addition = str(x1) + str(x2)
multiplication = str(x1) * x2
print("String Format-------------------------\nAddition ={} is{}\t\tMultiplication ={} is{}".format(addition,type(addition),multiplication,type(multiplication)))

addition = float(x1) + float(x2)
multiplication = float(x1) * float(x2)
print("Float Format-------------------------\nAddition ={} is{}\t\tMultiplication ={} is{}".format(addition,type(addition),multiplication,type(multiplication)))
