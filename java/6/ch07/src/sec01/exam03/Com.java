package sec01.exam03;

public class Com extends Cal {
	@Override
	double areaCircle(double r) {
		System.out.println("Calculator °´Ã¼ÀÇ areaCircle() ½ÇÇà");
		return Math.PI * Math.pow(r, 2);
	}

}
