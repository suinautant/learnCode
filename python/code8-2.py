# str1 = input('문자열을 입력하세요 : ')
# listStr = list(str1)
# listStr.reverse()
# print('내용을 거꾸로 출력 --> ', end='')
# # for tmpStr in range(len(str1)-1, -1, -1):
# #     print(str1[tmpStr], end='')
# for tmp in range(0, len(listStr)):
#     print(listStr[tmp], end='')
#
# 책 내용
inStr, outStr = '', ''
count, i = 0, 0

inStr = input('input Str : ')
count = len(inStr)

for i in range(0, count):
    outStr += inStr[count - (i+1)]

print("rever contents : %s" % outStr)
