package sec05.exam01;

class Car {
	String model;
	int speed;

	Car(String model) {
		this.model = model;
	}

	void setSpeed(int speed) {
		this.speed = speed;
	}

	void run() {
		for (int i = 0; i <= 50; i++) {
			this.setSpeed(i);
			System.out.println(this.model + "가 달립니다. (시속: " + this.speed + "km/h)");
		}
	}
}

public class CarExample {

	public static void main(String[] args) {
		Car myCar = new Car("포르쉐");
		Car youCar = new Car("벤츠");

		myCar.run();
		youCar.run();
	}

}
