from tkinter import *

window = Tk()
x, y = 0, 0
btnList = [None]*3

for i in range(0, 3):
    btnList[i] = Button(window, text='버튼'+str(i+1))

for btn in btnList:
    # btn.pack(side=BOTTOM, fill=X, padx=10, pady=10)
    btn.place(x=x, y=y, width=50, height=50)
    # x += 50
    y += 50
window.mainloop()
