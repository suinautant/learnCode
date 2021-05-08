animals = {
    '곰': '능소니',
    '호랑이': '개호주',
    '명태': '노가리',
    '닭': '병아리',
    '개': '강아지',
    '고등어': '고도리',
    '말': '망아지',
}

while True:
    animal = input(str(list(animals.keys())) + ' 중 새끼 이름을 알고 싶은 동물은? : ')
    if animal in animals:
        print('<%s>의 새끼는 <%s>입니다.\n' % (animal, animals.get(animal)))
    elif animal == 'q':
        break
    else:
        print('그런 음식이 없습니다. 확인해 보세요.\n')
