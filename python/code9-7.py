def func1():
    print('func1()에서 a ', a)


def func2():
    global a
    a = 10
    print('func2()에서 a ', a)


a = 20

func1()
func2()

print('main()에서 a ', a)
