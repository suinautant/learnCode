from tkinter import *
from time import *

fnameList = [
    'jeju1.gif',
    'jeju2.gif',
    'jeju3.gif',
    'jeju4.gif',
    'jeju5.gif',
    'jeju6.gif',
    'jeju7.gif',
    'jeju8.gif',
    'jeju9.gif',
]
photoList = [None]*9
num = 0


def clickNext():
    global num
    num += 1
    if num > 8:
        num = 0
    # 배열의 시작점이 1인가?? 0인가??
    photo = PhotoImage(file='image/gif/'+fnameList[num])
    pLabel.configure(image=photo)
    pLabel.image = photo

    tLabel.configure(text='파일 이름 : '+fnameList[num])
    window.title('사진 앨범 보기'+' / 파일 이름 : '+fnameList[num])


def clickPrev():
    global num
    num -= 1
    if num < 0:
        num = 8
    # 배열의 시작점이 1인가?? 0인가??
    photo = PhotoImage(file='image/gif/'+fnameList[num])
    pLabel.configure(image=photo)
    pLabel.image = photo

    tLabel.configure(text='파일 이름 : '+fnameList[num])
    window.title('사진 앨범 보기'+' / 파일 이름 : '+fnameList[num])


window = Tk()
window.geometry('700x550')
window.title('사진 앨범 보기'+' / 파일 이름 : '+fnameList[num])

btnPrev = Button(window, text='<< 이전', command=clickPrev)
btnNext = Button(window, text='다음 >>', command=clickNext)

photo = PhotoImage(file='image/gif/' + fnameList[0])
pLabel = Label(window, image=photo)

tLabel = Label(window, text='파일 이름 : '+fnameList[0])

btnPrev.place(x=250, y=10)
btnNext.place(x=400, y=10)
tLabel.place(x=300, y=60)
pLabel.place(x=15, y=90)

window.mainloop()
