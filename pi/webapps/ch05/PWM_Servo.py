# -*- coding: utf-8 -*-

import RPi.GPIO as GPIO
import time

USED_PIN = 18  # 12pin - physical
HERTZ = 60

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)
GPIO.setup(USED_PIN, GPIO.OUT)


servo = GPIO.PWM(USED_PIN, HERTZ)
servo.start(0)

try:
    while True:
        servo.ChangeDutyCycle(90)
        time.sleep(1)
        # servo.ChangeDutyCycle(-12.5)
        # time.sleep(1)
        # servo.ChangeDutyCycle(2.5)
        # time.sleep(1)

except KeyboardInterrupt:
    servo.stop()
    GPIO.cleanup()
