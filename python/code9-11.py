# def para_func(v1, v2, v3=0, v4=0, v5=0, v6=0, v7=0, v8=0, v9=0, v10=0):
def para_func(*para):
    result = 0
    for num in para:
        result += num
    return result


hap = 0

hap = para_func(10, 20)
print('매개변수가 2개인 함수를 호출한 결과 ==>', hap)
hap = para_func(10, 20, 30, 40, 50, 60, 70, 80, 90, 100)
print('매개변수가 10개인 함수를 호출한 결과 ==>', hap)
