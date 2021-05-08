from io import StringIO


def return_print(*message):
    io = StringIO()
    print(*message, file=io, end="")
    return io.getvalue()


# wow = return_print("하하", "호호", "히히")
wow = return_print("(10,20)")
print(wow)
print(type(wow))
