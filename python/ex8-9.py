import turtle
import random
import math
from tkinter.simpledialog import *

inStr = ''
tX, tY = [0] * 2
angle = 0
txtSize = 20
dist = 100
swidth, sheight = 1000, 1000
pi = 3.1415992
angleVal = int(360 / len(inStr))

turtle.title('거북이 원 모양의 글자쓰기')
turtle.shape('turtle')
turtle.setup(width=swidth+50, height=sheight+50)
turtle.screensize(swidth, sheight)
turtle.penup()

inStr = askstring('문자열 입력', '거북이 쓸 문자열을 입력')

for ch in inStr:
    r, g, b = random.random(), random.random(), random.random()
    rad = pi * angle/180
    angle += angleVal
    tX = dist * math.cos(rad)
    tY = dist * math.sin(rad)

    turtle.goto(tX, tY)
    turtle.pencolor(r, g, b)
    turtle.write(ch, font=('맑은 고딕', txtSize, 'bold'))

turtle.done()
