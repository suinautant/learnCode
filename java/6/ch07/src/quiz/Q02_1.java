//����2-2. ����2-1���� ��� ����� ����� �̿��Ͽ� �ڽ�Ŭ������ ����ϴ� �ڹ����α׷��� �ۼ��Ͽ� ���ÿ�.

package quiz;

import java.util.Scanner;

class Sum {
	public int sum(int kor, int math, int eng) {
		return kor + math + eng;
	}
}

class Avg extends Sum {
	public double avgF(int kor, int math, int eng) {
		return (double) (sum(kor, math, eng) / 3);

	}
}

public class Q02_1 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Avg avg = new Avg();

		System.out.print("����, ����, ���� ���� ������ �Է��ϼ��� : ");
		double sum = avg.avgF(sc.nextInt(), sc.nextInt(), sc.nextInt());
		System.out.println("��� : " + sum);
	}

}