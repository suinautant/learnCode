//����. �л����� ������ ArrayList�� �����ϰ� �˻��� �� �ִ� �ڹ����α׷��� �ۼ��Ͻÿ�.
//- �л����� ������ Student��� Ŭ������ ��Ÿ����, Student�� �л��� �̸�, �ּ�, ��ȭ��ȣ ���� �ʵ带 ������.
//- ArrayList�� ������� ó���� �� �ݺ����� ����Ͻÿ�.
//- �л����� ������ �߰�, ��ȸ, �����ϴ� ������ �޴��� ��µǵ��� �ۼ��Ͻÿ�.
//
//*** �޴� ***
//1. �л� �߰�
//2. �л� ��ȸ
//3. �л� ����
//4. ����

package test;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

class Student {
	String name;
	String address;
	String tel;

	public Student() {

	}

	public Student(String name, String address, String tel) {
		this.address = address;
		this.name = name;
		this.tel = tel;
	}
}

public class TestExam01 {

	public static void main(String[] args) {
		List<Student> list = new ArrayList<>();
		Student student = new Student();
		try {
			while (true) {
				Scanner sc = new Scanner(System.in);

				System.out.println("*** �޴� ***");
				System.out.println("1. �л� �߰�");
				System.out.println("2. �л� ��ȸ");
				System.out.println("3. �л� ����");
				System.out.println("4. ����");
				System.out.print("�Է� : ");
				int menu = sc.nextInt();

				switch (menu) {
				case 1:
					System.out.println("�߰�");
					System.out.println();
					System.out.print("�̸� : ");
					student.name = sc.next();
					System.out.print("�ּ� : ");
					student.address = sc.next();
					System.out.print("��ȭ��ȣ : ");
					student.tel = sc.next();
					list.add(new Student(student.name, student.address, student.tel));
					break;
				case 2:
					System.out.println("��ȸ");
					System.out.println();
					for (int i = 0; i < list.size(); i++) {
						Student s = list.get(i);
						System.out.println("�̸� : " + s.name);
						System.out.println("�ּ� : " + s.address);
						System.out.println("��ȭ��ȣ : " + s.tel);
					}
					break;
				case 3:
					System.out.println("����");
					list.clear();
					break;
					
				case 4:
					break;

				default:
					System.out.println("1~4 ���� ������ �����ϼ���");
					break;
				}
				System.out.println();

				if (menu == 4) {
					System.out.println("�����մϴ�.");
					break;
				}

			}

		} catch (Exception e) {
			System.out.println("���� ��Ȳ : " + e + "�߻�");
		}

	}

}
