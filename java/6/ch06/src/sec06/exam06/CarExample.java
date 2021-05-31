package sec06.exam06;

class Car {
	private int speed;
	private boolean stop;

	public int getSpeed() {
		return speed;
	}

	public void setSpeed(int speed) {
		if (speed < 0) {
			this.speed = 0;
			return;
		} else {
			this.speed = speed;
		}
	}

	public boolean isStop() {
		return stop;
	}

	public void setStop(boolean stop) {
		this.stop = stop;
		this.speed = 0;
	}

}

public class CarExample {

	public static void main(String[] args) {
		Car myCar = new Car();

		System.out.println("isStop() : " + myCar.isStop());

		myCar.setSpeed(-50);
		System.out.println("���� �ӵ� : " + myCar.getSpeed());

		myCar.setSpeed(60);

		if (!myCar.isStop()) {
			myCar.setStop(true);
		}
		System.out.println("���� �ӵ� : " + myCar.getSpeed());
	}

}
