num = int(input("*** 숫자를 입력하세요 : "))
tagV = True

for i in range(2, num):
    if num % i == 0:
        tagV = False

if tagV == True:
    print("%d는 소수입니다." % num)
else:
    print("%d는 소수가 아닙니다." % num)
