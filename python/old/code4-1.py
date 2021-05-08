money, c500, c100, c50, c10 = 0, 0, 0, 0, 0
money = int(input("교환할 돈은 얼마? : "))
c500 = money // 500
money %= 500
c100 = money // 100
money %= 100
c50 = money // 50
money %= 50
c10 = money // 10
money %= 10

print("\n500 * ", c500)
print("100 * ", c100)
print("50 * ", c50)
print("10 * ", c10)
print("remainder * ", money)
