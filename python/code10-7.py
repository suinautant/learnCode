from tkinter import *
from tkinter import messagebox

window = Tk()


def myFunc():
    if chk.get() == 0:
        messagebox.showinfo(title='', message='체크 버튼이 꺼졌어요 (OFF)')
    else:
        messagebox.showinfo(title='', message='체크 버튼이 켜젔어요 (ON)')


chk = IntVar()
ckb = Checkbutton(window, text="클릭하세요", variable=chk, command=myFunc)
ckb.pack()

window.mainloop()
