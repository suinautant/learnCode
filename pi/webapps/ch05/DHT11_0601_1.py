import time
import Adafruit_DHT
import RPi.GPIO as GPIO

sensor = Adafruit_DHT.DHT11
pin = 4

try:
    while 1:
        h, t = sensor.read_retry(sensor, pin)
        if h is not None and t is not None:
            print(format(h, t))
except KeyboardInterrupt:
    pass
finally:
    GPIO.cleanup()
