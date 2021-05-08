########################################################
for i in range(6):
    if(i == 3):
        continue
    print(i)

########################################################
# for i in range(1, 10):
#     # print("i is %d" % i)
#     for j in range(1, 10):
#         if j == 3:
#             break
#         print("i = %d / j = %d" % (i, j))


# ch = ""
# a, b = 0, 0
# while True:
#     resultAsk = str(input("종료하려면 $ 입력 : "))
#     if (resultAsk != '$'):
#         a = int(input("계산 할 첫 번째 수를 입력하세요 : "))
#         b = int(input("계산 할 두 번째 수를 입력하세요 : "))
#         ch = str(input("계산 할 연산자를 입력하세요 : "))

#         if (ch == "+"):
#             print("%d + %d = %d" % (a, b, a+b))
#         elif (ch == "-"):
#             print("%d - %d = %d" % (a, b, a-b))
#         elif (ch == "*"):
#             print("%d * %d = %d" % (a, b, a*b))
#         elif (ch == "/"):
#             print("%d / %d = %d" % (a, b, a/b))
#         else:
#             print("연산자를 잘못 입력했습니다.")
#     else:
#         print("종료합니다.")
#         break


# askRun = True
# while askRun:
#     a = int(input("계산 할 첫 번째 수를 입력하세요 : "))
#     b = int(input("계산 할 두 번째 수를 입력하세요 : "))
#     ch = str(input("계산 할 연산자를 입력하세요 : "))

#     if (ch == "+"):
#         print("%d + %d = %d" % (a, b, a+b))
#     elif (ch == "-"):
#         print("%d - %d = %d" % (a, b, a-b))
#     elif (ch == "*"):
#         print("%d * %d = %d" % (a, b, a*b))
#     elif (ch == "/"):
#         print("%d / %d = %d" % (a, b, a/b))
#     else:
#         print("연산자를 잘못 입력했습니다.")

#     resultAsk = str(input("계속 할래? (Y/other) : "))
#     if (resultAsk != 'Y') and (resultAsk != 'y'):
#         askRun = False
