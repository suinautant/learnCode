package exam;

public class CircleRadius implements CircleTest {
	public double PI = 3.14; // ������

	// �� �ѷ�
	@Override
	public double circumstance(double r) {
		return 2 * PI * r;
	}

	// �� ����
	@Override
	public double area(double r) {
		return PI * Math.pow(r, 2);
	}
}
