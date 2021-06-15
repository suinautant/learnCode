import time   # sleep 용도
import RPi.GPIO as GPIO

led = 36
GPIO.setmode(GPIO.BOARD)
GPIO.setup(led, GPIO.OUT)

# GPIO.BOARD 보드 상의 핀 번호 사용
# GPIO.BCM .  핀번호가 아니라 Broadcom SOC channel을 사용 GPIOXX의 XX 번호를 사용

# 7번 핀을 사용함
pin_to_circuit = 7
GPIO.setup(led, GPIO.OUT)
time.sleep(2)


def rc_time(pin_to_circuit):
    count = 0

    # Output on the pin for
    GPIO.setup(pin_to_circuit, GPIO.OUT)   # 7번 핀을 입력으로 설정
    GPIO.output(pin_to_circuit, GPIO.LOW)  # 7번 핀의 디지털 출력 설정
    # 셋중에 아무거나 골라서 사용
    # 1, GPIO.HIGH, True
    # 0, GPIO.LOW, False

    time.sleep(0.1)  # 0.1 sec sleep

    # 7번 핀을 input으로 변경
    GPIO.setup(pin_to_circuit, GPIO.IN)

    # 7번 핀으로부터 읽은 값이 HIGH가 될 때까지 count 수행
    # 그래서 실행해보면 센서 주변이 어두울 수록 카운트 값이 크다.
    while (GPIO.input(pin_to_circuit) == GPIO.LOW):
        # count += 1
        GPIO.setup(led, GPIO.OUT)

    return count


# 스크립트가 인터럽트 될때 catch하고, 올바르게 cleanp
try:
    # 메인 루프
    while True:
        print(rc_time(pin_to_circuit))   # 조도 센서의 값 출력
except KeyboardInterrupt:
    pass
finally:
    GPIO.cleanup()  # 사용했던 모든 포트에 대해서 정리
