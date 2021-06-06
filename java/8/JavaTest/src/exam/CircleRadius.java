package exam;

public class CircleRadius implements CircleTest {
	public double PI = 3.14; // 원주율

	// 원 둘레
	@Override
	public double circumstance(double r) {
		return 2 * PI * r;
	}

	// 원 면적
	@Override
	public double area(double r) {
		return PI * Math.pow(r, 2);
	}
}
