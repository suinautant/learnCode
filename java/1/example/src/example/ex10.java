/*����10. Aȸ����� ������ 150����, ���ʽ� 60����, ������ ��ü ������ 9%, �ſ� �ԱݵǴ� �ݾ��� ��ü ���Կ��� ������ �� �ݾ��̴�. �Ʒ� ��¿��� ���� ��µǴ� �ڹ����α׷��� �ۼ��Ͻÿ�.
- ��¿�- 
Aȸ����� �� �Աݾ��� 191.1�����Դϴ�.*/
package example;

public class ex10 {

	public static void main(String[] args) {
		double salary = 150;
		double bonus = 60;
		double total = salary + bonus;
		double tax = 0.09; // 9%
		double realIncom = total - (total * tax);
		System.out.printf("Aȸ����� �� �Աݾ��� %.1f�����Դϴ�.", realIncom);

	}

}
