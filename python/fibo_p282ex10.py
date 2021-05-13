def fibo(n):
    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return fibo(n-1)+fibo(n-2)


num = 0
num = int(input('피보나치 수열 F값 : '))
print("F(", num, ") : ", fibo(num))
