# -*- coding: utf-8 -*-

import RPi.GPIO as GPIO
import time


def ledToggle(cycle):
    # cycle = 0.1
    if cycle < 0:
        # cycle = 0.00001
        return False
    GPIO.output(ledY, 1)
    GPIO.output(ledR, 0)
    time.sleep(cycle)
    GPIO.output(ledY, 0)
    GPIO.output(ledR, 1)
    time.sleep(cycle)


ledR = 20
ledY = 21
sensor = 17
TRIG_PIN = 23
ECHO_PIN = 24

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)

GPIO.setup(ledR, GPIO.OUT)
GPIO.setup(ledY, GPIO.OUT)
GPIO.setup(sensor, GPIO.IN)
GPIO.setup(TRIG_PIN, GPIO.OUT)
GPIO.setup(ECHO_PIN, GPIO.IN)

GPIO.output(TRIG_PIN, False)

print("Initirizing . . . . . ")
time.sleep(2)

try:
    while True:
        # 거리 계산
        GPIO.output(TRIG_PIN, True)
        time.sleep(0.00001)
        GPIO.output(TRIG_PIN, False)
        while GPIO.input(ECHO_PIN) == 0:
            start = time.time()
        while GPIO.input(ECHO_PIN) == 1:
            stop = time.time()
        check_time = stop-start
        distance = check_time * 34300 / 2
        print("Distance : %.1f cm" % distance)

        # LED 깜빡임 계산. 멀수록 깜빡이는 주기 길다
        cycle = distance / 100
        print("cycle : ", cycle)

        ledToggle(cycle)

except KeyboardInterrupt:
    print("Stopped by User")
    GPIO.cleanup()
