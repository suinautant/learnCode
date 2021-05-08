num = int(input("16진수 글자를 하나 입력 : "), 16)

if((0 <= num and num <= 9) or (0xa <= num and num <= 0xf)):
    print("10진수 ==> ", int(num))
else:
    print("16진수 아닙니다")
