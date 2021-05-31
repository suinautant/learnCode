# -*- coding: utf-8 -*-

import RPi.GPIO as GPIO
import time

# HERTZ = 60

GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)

TRIG_PIN = 23
ECHO_PIN = 24
print("Distance measurement in progress")

GPIO.setup(TRIG_PIN, GPIO.OUT)
GPIO.setup(ECHO_PIN, GPIO.IN)

GPIO.output(TRIG_PIN, False)
print("Waiting for sensor to settle")
time.sleep(2)

try:
    while True:
        # print("while Ture")
        GPIO.output(TRIG_PIN, True)
        time.sleep(0.00001)
        GPIO.output(TRIG_PIN, False)

        while GPIO.input(ECHO_PIN) == 0:
            # print("while start")
            start = time.time()
        while GPIO.input(ECHO_PIN) == 1:
            # print("while stop")
            stop = time.time()

        check_time = stop - start
        distance = check_time * 34300 / 2
        print("Distance : %.1f cm" % distance)
        time.sleep(0.4)

except KeyboardInterrupt:
    print("Measurement stopped by User")
    GPIO.cleanup()
