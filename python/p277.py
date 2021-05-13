def getnFunc(num):
    for i in range(0, num):
        yield i
        print('제너레이터 진행 중')


for data in getnFunc(15):
    print(data)
