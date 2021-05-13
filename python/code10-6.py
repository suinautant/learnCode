from tkinter import *
from tkinter import messagebox


def myFunc():
    messagebox.showinfo(title='강아지버튼', message='강아지가 귀엽죠?')


window = Tk()
photo = PhotoImage(file='image/gif/cat.gif')
button1 = Button(window, image=photo, command=myFunc)
button1.pack()

window.mainloop()
