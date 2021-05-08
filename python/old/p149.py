import random

# numA = random.randrange(1, 7)
# numB = random.randrange(1, 7)
numA, numB = [random.randrange(1, 7)] * 2

print("A의 주사위 숫자는 %d입니다." % numA)
print("B의 주사위 숫자는 %d입니다." % numB)

if numA == numB:
    print("비겼습니다.")
elif numA > numB:
    print("A가 이겼습니다.")
elif numA < numB:
    print("B가 이겼습니다.")
else:
    print("오류")
