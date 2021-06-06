package sec02.exam01;

public class CarExample {

	public static void main(String[] args) {
		Car myCar = new Car();

		myCar.run();
		System.out.println("-----------");

		myCar.frontLeftTire = new KumhoTire();
		myCar.frontRightTire = new KumhoTire();
		myCar.backLeftTire = new KumhoTire();
		myCar.backRightTire = new KumhoTire();

		myCar.run();
		System.out.println("-----------");

		Car youCar = new Car();
		youCar.frontLeftTire = new KumhoTire();
		youCar.backLeftTire = new KumhoTire();

		youCar.run();
		System.out.println("-----------");
	}

}
