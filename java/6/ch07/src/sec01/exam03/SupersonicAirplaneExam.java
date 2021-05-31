package sec01.exam03;

class Airplane {
	public void land() {
		System.out.println("�����մϴ�.");
	}

	public void fly() {
		System.out.println("�Ϲݺ����մϴ�.");
	}

	public void takeoff() {
		System.out.println("�̷��մϴ�.");
	}
}

class SupersonicAirplane extends Airplane {
	public static final int NORMAL = 1;
	public static final int SUPERSONIC = 2;

	public int flyMode = NORMAL;

	@Override
	public void fly() {
		if (flyMode == SUPERSONIC) {
			System.out.println("�����Ӻ����մϴ�.");
		} else {
			super.fly();
		}
	}
}

public class SupersonicAirplaneExam {

	public static void main(String[] args) {
		SupersonicAirplane sa = new SupersonicAirplane();
		sa.takeoff();
		sa.fly();
		sa.flyMode = SupersonicAirplane.SUPERSONIC;
//		sa.flyMode = sa.SUPERSONIC;
		sa.fly();
		sa.flyMode = SupersonicAirplane.NORMAL;
//		sa.flyMode = sa.NORMAL;
		sa.fly();
		sa.land();
	}

}
