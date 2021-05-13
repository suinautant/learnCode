outFp, inFp = None, None
inStr = ""

inFp = open("c:/windows/win.ini", "r")
outFp = open("d:/python/Temp/data3.txt", "w")

inList = inFp.readlines()

for inStr in inList:
    outFp.writelines(inStr + "\n")
    print(inStr)

inFp.close()
outFp.close()
print("---복사 끝---")
