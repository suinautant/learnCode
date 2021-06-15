# -*- coding: utf-8 -*-

import RPi.GPIO as GPIO
import time

ledR = 20
ledY = 21
sensor = 17

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)

GPIO.setup(ledR, GPIO.OUT)
GPIO.setup(ledY, GPIO.OUT)
GPIO.setup(sensor, GPIO.IN)

print("Initirizing . . . . . ")
time.sleep(5)

try:
    while True:
        print("sensor value : ", GPIO.input(sensor))
        if GPIO.input(sensor) == 1:
            GPIO.output(ledY, 1)
            GPIO.output(ledR, 0)
            print("Motion Detected !")
            time.sleep(0.2)
        if GPIO.input(sensor) == 0:
            GPIO.output(ledY, 0)
            GPIO.output(ledR, 1)
            time.sleep(0.2)


except KeyboardInterrupt:
    print("Stopped by User")
    GPIO.cleanup()
