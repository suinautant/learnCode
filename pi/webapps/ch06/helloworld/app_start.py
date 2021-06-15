from flask import Flask
from flask import request
import RPi.GPIO as GPIO

app = Flask(__name__)
app.debug = True

RED = 8
YELLOW = 12
# GPIO.cleanup()
GPIO.setmode(GPIO.BOARD)
GPIO.setup(RED, GPIO.OUT, initial=GPIO.LOW)
GPIO.setup(YELLOW, GPIO.OUT, initial=GPIO.LOW)


@app.route("/led/control/")
def led_control():
    control = request.args.get('key', 'error')
    valOn = "<a href='/led/control?key=on'><button style='height:100px;width:200px;background-color:red'>ON</button></a>"
    valOff = "<a href='/led/control?key=off'><button style='height:100px;width:200px;background-color:red'>OFF</button></a><br />"
    valClean = "<a href='/led/control?key=clean'><button>CLEAN</button></a>"
    resResult = valOn+valOff+valClean
    if control == "on":
        led_on()
    elif control == "off":
        led_off()
    elif control == "error":
        # resResult = "쿼리스트링 state가 전달되지 않았습니다."
        return resResult
    return resResult


@app.route("/led/cleanup")
def gpio_cleanup():
    GPIO.cleanup()
    return "GPIO CLEANUP"


@app.route("/led/on")
def led_on():
    GPIO.output(RED, GPIO.HIGH)
    GPIO.output(YELLOW, GPIO.HIGH)
    return "LED ON"


@app.route("/led/off")
def led_off():
    GPIO.output(RED, GPIO.LOW)
    GPIO.output(YELLOW, GPIO.LOW)
    return "LED OFF"


@app.route("/")
def helloworld():
    return "HELLOW WORLD"


if __name__ == "__main__":
    app.run(host="0.0.0.0")
    # app.run(host="localhost")
    # app.run(host="127.0.0.1")
