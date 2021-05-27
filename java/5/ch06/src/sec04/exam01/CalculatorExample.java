package sec04.exam01;

public class CalculatorExample {
	public static void main(String[] args) {
		Calculator myCalc = new Calculator();
		myCalc.powerOn();
		
		System.out.println("result1 : " + myCalc.plus(5, 6));
		
		System.out.println("result2 : " + myCalc.divide(10, 4));
		
		myCalc.powerOff();
	}
}
