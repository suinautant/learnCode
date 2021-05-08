###################################################################


###################################################################
# ch = ""
# a, b = 0, 0
# while True:
#     resultAsk = str(input("계속 할래? (Y/other) : "))
#     if (resultAsk == 'Y') or (resultAsk == 'y'):
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
