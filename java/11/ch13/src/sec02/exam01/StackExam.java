package sec02.exam01;

import java.util.*;

class Coin {
	private int value;

	public Coin(int value) {
		this.value = value;
	}

	public int getValue() {
		return value;
	}
}

public class StackExam {
	public static void main(String[] args) {
		Stack<Coin> coinBox = new Stack<>();

		coinBox.push(new Coin(100));
		coinBox.push(new Coin(50));
		coinBox.push(new Coin(500));
		coinBox.push(new Coin(10));

		while (!coinBox.isEmpty()) {
//			Coin coin = coinBox.pop();
//			System.out.println("������ ���� : " + coin.getValue() + "��");
			coinBox.pop();
		}
		System.out.println("���� �� ���´�");

	}

}
