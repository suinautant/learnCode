endTuple = ()
tt1 = ()
list1 = []
value = 1
for i in range(0, 3):
    for k in range(0, 4):
        # list1.append(value)
        list1 += value
        value += 1
    # list2.append(list1)
    if i == 0:
        tt0 = list1
    elif i == 1:
        tt1 = list1
    elif i == 2:
        tt2 = list1
    list1 = []

for i in range(0, 3):
    for k in range(0, 4):
        print("%3d" % list2[i][k], end="")
    print("")

print("list2 : ", list2)
