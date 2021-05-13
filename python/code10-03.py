from tkinter import *

window = Tk()

photo = PhotoImage(file="d:\python\image\coffee.gif")
label1 = Label(window, image=photo)

label1.pack()

window.mainloop()
