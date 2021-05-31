# -*- coding: utf-8 -*-

import RPi.GPIO as GPIO
import time

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)

GPIO.setup(18, GPIO.OUT)
p = GPIO.PWM(18, 100)

# Frq = [262, 294, 330, 349, 392, 440, 493, 523]
# speed = 0.5

# p.start(50)

# try:
#     while 1:
#         for fr in Frq:
#             p.ChangeFrequency(fr)
#             time.sleep(speed)

p.start(90.0)
scale = [262, 294, 330, 349, 392, 440, 494]
twinkle = [1, 1, 5, 5, 6, 6, 5, 4, 4, 3, 3, 2, 2, 1,
           5, 5, 4, 4, 3, 3, 2, 5, 5, 4, 4, 3, 3, 2,
           1, 1, 5, 5, 6, 6, 5, 4, 4, 3, 3, 2, 2, 1]

try:
    for i in range(0, 42):
        print("i : ", i, " / twinkle[i]: ", twinkle[i], " / scale[twinkle[i]]: ",
              scale[twinkle[i]])
        p.ChangeFrequency(scale[twinkle[i]])
        if i == 6 or i == 13 or i == 20 or i == 27 or i == 34 or i == 41:
            time.sleep(1.0)
        else:
            time.sleep(0.5)

except KeyboardInterrupt:
    pass
p.stop()
GPIO.cleanup()
