import sys

intVar, floatVar, bloolVar, strVar, listVar, tupleVar, dictVar, setVar = [
    None]*8

notNull = None
yesNull = [None]
otherInt = 0


if __name__ == '__main__':
    intVar = 0
    floatVar = 0.0
    bloolVar = True
    strVar = ''
    listVar = []
    tupleVar = ()
    dictVar = {}
    setVar = set()

    print('int형 기본 크기 -->', sys.getsizeof(intVar))
    print('float형 기본 크기 -->', sys.getsizeof(floatVar))
    print('bool형 기본 크기 -->', sys.getsizeof(bloolVar))
    print('str형 기본 크기 -->', sys.getsizeof(strVar))
    print('list형 기본 크기 -->', sys.getsizeof(listVar))
    print('tuple형 기본 크기 -->', sys.getsizeof(tupleVar))
    print('dictionary형 기본 크기 -->', sys.getsizeof(dictVar))
    print('set형 기본 크기 -->', sys.getsizeof(setVar))

    print('NotNull -->', type(notNull), 'sizeof', sys.getsizeof(notNull))
    print('YesNull -->', type(yesNull), 'sizeof', sys.getsizeof(yesNull))
    print('0입력한 int형 기본 크기 -->', sys.getsizeof(otherInt))
