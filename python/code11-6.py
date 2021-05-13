import os

f = None
fName, inLists, inStr = "", [], ""
fName = input("파일명 입력 : ")

if os.path.exists(fName):
    f = open(fName, "r", encoding="utf-8")

    inLists = f.readlines()
    for inStr in inLists:
        print(inStr, end="")

    f.close()
else:
    print("%s 파일이 없습니다.", fName)
