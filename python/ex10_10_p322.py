from tkinter import *
from tkinter import messagebox
from tkinter.filedialog import askopenfilename
from tkinter.simpledialog import askinteger


def func_open():
    global photo
    global filename
    filename = askopenfilename(parent=window, filetypes=(
        ("GIF 파일", "*.gif"),
        ("모든 파일", "*.*")
    ))
    photo = PhotoImage(file=filename)
    pLabel1.configure(image=photo)
    # print(filename)


def func_exit():
    window.quit()
    window.destroy()


def funcAskZoom(value):
    inout = value
    if (inout == 'in'):
        ask = "확대"
    elif (inout == 'out'):
        ask = "축소"
    else:
        print("잘못 된 funAskZoom 인자")

    zoom = askinteger(
        ask+"배수", ask+" 할 배수를 입력하세요[2-8]", minvalue=2, maxvalue=8)
    # zoom = IntVar(input(ask + '할 배수를 입력하세요. (2-8)'))
    funcZoom(zoom, inout)


def funcZoom(value, inout):
    global photo
    if (inout == 'in'):
        photo = photo.zoom(value, value)
    elif (inout == 'out'):
        photo = photo.subsample(value, value)
    else:
        print("잘못 된 funZoom() 인자")
    pLabel1.configure(image=photo)

# def funcZoomin():
#     zoom = askinteger("확대배수", "확대 할 배수를 입력하세요[2-8]", minvalue=2, maxvalue=8)
#     global photo
#     photo = photo.zoom(zoom, zoom)
#     pLabel1.configure(image=photo)


# def funcZoomout():
#     zoom = askinteger("축소배수", "축소 할 배수를 입력하세요[2-8]", minvalue=2, maxvalue=8)
#     global photo
#     photo = photo.subsample(zoom, zoom)
#     pLabel1.configure(image=photo)


window = Tk()
window.geometry("400x400")
window.title("영화 감상하기")

pLabel1 = Label(window)
pLabel1.pack(expand=1, anchor=CENTER)

mainMenu = Menu(window)
window.config(menu=mainMenu)
fileMenu = Menu(mainMenu)
imageMenu = Menu(fileMenu)

mainMenu.add_cascade(label="파일", menu=fileMenu)
mainMenu.add_cascade(label="이미지효과", menu=imageMenu)
fileMenu.add_command(label="열기", command=func_open)
fileMenu.add_separator()
fileMenu.add_command(label="종료", command=func_exit)

imageMenu.add_command(label="확대", command=lambda: funcAskZoom('in'))
imageMenu.add_command(label="축소", command=lambda: funcAskZoom('out'))


window.mainloop()
