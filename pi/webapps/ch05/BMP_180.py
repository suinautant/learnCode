import RPi.GPIO as IoPort
import time

# IoPort.cleanup()


def InitPort():  # Data port 25mSec 동안 High유지, 20mSec동안 Low출력, Data Port를 입력으로 변경
    IoPort.setmode(IoPort.BCM)
    IoPort.setup(4, IoPort.OUT)
    IoPort.output(4, IoPort.HIGH)
    time.sleep(0.025)
    IoPort.output(4, IoPort.LOW)
    time.sleep(0.02)
    IoPort.setup(4, IoPort.IN, pull_up_down=IoPort.PUD_UP)


def MakeBit():  # High Pulse의 값이 40uSec 보다 길면 1 짧으면 0으로 설정,
    btval = []
    lcount = 0
    flag = 0
    for bt in data:
        if flag == 0:
            if bt == 0:
                continue
            else:
                lcount = 1
                flag = 1
        else:
            if bt == 1:
                lcount = lcount + 1
            else:
                if lcount > 8:
                    btval.append(1)
                else:
                    btval.append(0)
                    flag = 0
    return btval


try:
    while True:
        data = []
        InitPort()  # 통신시작
        for i in range(0, 1000):
            data.append(IoPort.input(4))  # 1000개 데이터 읽음.
            bitval = MakeBit()  # bit Stream으로 변경
            if len(bitval) < 40:
                continue
            tval = []
            pos = 0
            val1 = 0
            bitval.remove(1)  # 1번째 Bit 는 skip
        for bt in bitval:  # 5개의 byte를 만든다
            val1 = val1 * 2
            val1 = val1 + bt
            pos = pos + 1
            if pos == 8:
                tval.append(val1)
                val1 = 0
                pos = 0
            tval.append(val1)
            if len(tval) < 5:
                continue
        Total = 0
        for i in range(0, 4):
            Total = Total + tval[i]  # checksum을 계산
            if Total == tval[4]:  # checksum이 맞으면 출력하고 프로그램 종료
                print('Humidty : ', tval[0])
                print('Temperature : ', tval[2])
                break
        # data = []
        # InitPort()  # 통신시작
        # for i in range(0, 1000):
        #     data.append(IoPort.input(4))  # 1000개 데이터 읽음.
        # bitval = MakeBit()  # bit Stream으로 변경
        # if len(bitval) < 40:
        #     continue
        # tval = []
        # pos = 0
        # val1 = 0
        # bitval.remove(1)  # 1번째 Bit 는 skip
        # for bt in bitval:  # 5개의 byte를 만든다
        #     val1 = val1 * 2
        #     val1 = val1 + bt
        #     pos = pos + 1
        #     if pos == 8:
        #         tval.append(val1)
        #         val1 = 0
        #         pos = 0
        # tval.append(val1)
        # if len(tval) < 5:
        #     continue
        # Total = 0
        # for i in range(0, 4):
        #     Total = Total + tval[i]  # checksum을 계산
        # if Total == tval[4]:  # checksum이 맞으면 출력하고 프로그램 종료
        #     print('Humidty : ', tval[0])
        #     print('Temperature : ', tval[2])
        #     break

except KeyboardInterrupt:
    # print("Stopped by User")
    # IoPort.cleanup()
    pass
finally:
    IoPort.cleanup()
