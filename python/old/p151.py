i, dan = 0, 0

dan = int(input("단을 입력하세요 : "))

# forward
for i in range(1, 10, 1):
    print("%d x %d = %2d" % (dan, i, dan*i))

print("---------------------------------")
# reverse
for i in range(9, 0, -1):
    print("%d x %d = %2d" % (dan, i, dan*i))
