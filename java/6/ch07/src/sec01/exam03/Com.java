package sec01.exam03;

public class Com extends Cal {
	@Override
	double areaCircle(double r) {
		System.out.println("Calculator ��ü�� areaCircle() ����");
		return Math.PI * Math.pow(r, 2);
	}

}
