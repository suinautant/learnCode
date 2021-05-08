import turtle
import random
from tkinter.simpledialog import *

inStr = ''
swidth, sheight = 1000, 1000
tX, tY, txtSize, = [0] * 3
i = 0
minTxtSize, maxTxtSize = 10, 100

turtle.title('거북이 글자쓰기')
turtle.shape('turtle')
turtle.setup(width=swidth+50, height=sheight+50)
turtle.screensize(swidth, sheight)
turtle.penup()

inStr = askstring('문자열 입력', '거북이 쓸 문자열을 입력')
count = int(askstring('반복 횟수', '몇 번 반복할까요?'))


def paintTurtle():
    tX = random.randrange(-swidth/2, swidth/2)
    tY = random.randrange(-sheight/2, sheight/2)
    r, g, b = random.random(), random.random(), random.random()
    txtSize = random.randrange(minTxtSize, maxTxtSize)

    turtle.goto(tX, tY)

    turtle.pencolor(r, g, b)
    turtle.write(ch, font=('맑은 고딕', txtSize, 'bold'))


if (count == 0):
    while True:
        for ch in inStr:
            paintTurtle()
            # tX = random.randrange(-swidth/2, swidth/2)
            # tY = random.randrange(-sheight/2, sheight/2)
            # r, g, b = random.random(), random.random(), random.random()
            # txtSize = random.randrange(10, 50)

            # turtle.goto(tX, tY)

            # turtle.pencolor(r, g, b)
            # turtle.write(ch, font=('맑은 고딕', txtSize, 'bold'))
else:

    for i in range(0, count):
        for ch in inStr:
            paintTurtle()
            # tX = random.randrange(-swidth/2, swidth/2)
            # tY = random.randrange(-sheight/2, sheight/2)
            # r, g, b = random.random(), random.random(), random.random()
            # txtSize = random.randrange(10, 50)

            # turtle.goto(tX, tY)

            # turtle.pencolor(r, g, b)
            # turtle.write(ch, font=('맑은 고딕', txtSize, 'bold'))

turtle.done()
