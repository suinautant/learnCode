inFp = None
inStr = ''

inFp = open("d:/python/Temp/data1.txt", "r")

# inStr = inFp.readline()
# print(inStr, end="")

# inStr = inFp.readline()
# print(inStr, end="")

# inStr = inFp.readline()
# print(inStr, end="")

while True:
    inStr = inFp.readline()
    if inStr == "":
        break
    print(inStr, end="")

inFp.close()
