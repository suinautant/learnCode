/*����8. �Ʒ��� ��¿��� ���� ����ϴ� �ڹ����α׷��� �ۼ��Ͽ� ���ÿ�.
- ��¿� -
Aȸ����� ������ 250�����̰� ������ 25������ �� �Ǽ��ɾ��� 225�����Դϴ�.*/
package example;

public class ex8 {

	public static void main(String[] args) {
		int salary = 250;
		int tax = (int) (salary * 0.1);
		int realIncome = salary - tax;
		System.out.printf("Aȸ����� ������ %d�����̰� ������ %d������ �� �Ǽ��ɾ��� %d�����Դϴ�.", salary, tax, realIncome);

	}

}
