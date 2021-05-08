result = ''
ss = 'IT CookBook 1234 파이썬'


for ch in ss:
    print('ch : ' + ch)
    if (ch.isdigit() == False):
        result += ch

print(result)
