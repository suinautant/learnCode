inFp = None
inStr = ''

# 3가지 형식 모두 가능
# inFp = open("d:/python/Temp/data1.txt", "r")
# inFp = open("d:\\python\\Temp\\data1.txt", "r")
inFp = open("d:\python\Temp\data1.txt", "r", encoding="utf-8")

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
