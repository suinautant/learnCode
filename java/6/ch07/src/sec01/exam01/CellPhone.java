package sec01.exam01;

public class CellPhone {
	String model;
	String color;

	void powerOn() {
		System.out.println("������ ���ϴ�.");
	}

	void powerOff() {
		System.out.println("������ �մϴ�.");
	}

	void bell() {
		System.out.println("���� �︳�ϴ�.");
	}

	void sendVoice(String msg) {
		System.out.println("�ڱ� : " + msg);
	}

	void receiveVoice(String msg) {
		System.out.println("���� : " + msg);
	}

	void hangUp() {
		System.out.println("��ȭ�� �����ϴ�.");
	}

}
