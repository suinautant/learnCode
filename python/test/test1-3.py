coffee = 0


def coffee_machine(button):
    if button == 1:
        print("보통커피")
    elif button == 2:
        print("설탕커피")
    elif button == 3:
        print("블랙커피")
    else:
        print("잘못 된 선택")


coffee = int(input("커피 자판기. 원하는 커피 선택 [1~3] : "))
coffee_machine(coffee)
