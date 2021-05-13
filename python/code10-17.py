from tkinter import *

window = Tk()

mainMenu = Menu(window)
window.config(menu=mainMenu)

fileMenu = Menu(mainMenu)
editMenu = Menu(mainMenu)
helpMenu = Menu(mainMenu)
subMenu = Menu(fileMenu)
subSubMenu = Menu(subMenu)

mainMenu.add_cascade(label="파일", menu=fileMenu)
mainMenu.add_cascade(label="편집", menu=editMenu)
mainMenu.add_cascade(label="도움", menu=helpMenu)

fileMenu.add_cascade(label="하위메뉴", menu=subMenu)
fileMenu.add_command(label="열기")
fileMenu.add_separator()
fileMenu.add_command(label="종료")

subMenu.add_cascade(label="마지막메뉴", menu=subSubMenu)
subMenu.add_command(label="하위1")
subMenu.add_command(label="하위2")
subMenu.add_command(label="하위3")


subSubMenu.add_command(label="최종1")
subSubMenu.add_command(label="최종2")
subSubMenu.add_command(label="최종3")

window.mainloop()
