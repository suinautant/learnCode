//문제. 학생들의 정보를 ArrayList에 저장하고 검색할 수 있는 자바프로그램을 작성하시오.
//- 학생들의 정보는 Student라는 클래스로 나타내며, Student는 학생의 이름, 주소, 전화번호 등의 필드를 가진다.
//- ArrayList의 입출력을 처리할 때 반복문을 사용하시오.
//- 학생들의 정보를 추가, 조회, 삭제하는 간단한 메뉴를 출력되도록 작성하시오.
//
//*** 메뉴 ***
//1. 학생 추가
//2. 학생 조회
//3. 학생 삭제
//4. 종료

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

				System.out.println("*** 메뉴 ***");
				System.out.println("1. 학생 추가");
				System.out.println("2. 학생 조회");
				System.out.println("3. 학생 삭제");
				System.out.println("4. 종료");
				System.out.print("입력 : ");
				int menu = sc.nextInt();

				switch (menu) {
				case 1:
					System.out.println("추가");
					System.out.println();
					System.out.print("이름 : ");
					student.name = sc.next();
					System.out.print("주소 : ");
					student.address = sc.next();
					System.out.print("전화번호 : ");
					student.tel = sc.next();
					list.add(new Student(student.name, student.address, student.tel));
					break;
				case 2:
					System.out.println("조회");
					System.out.println();
					for (int i = 0; i < list.size(); i++) {
						Student s = list.get(i);
						System.out.println("이름 : " + s.name);
						System.out.println("주소 : " + s.address);
						System.out.println("전화번호 : " + s.tel);
					}
					break;
				case 3:
					System.out.println("삭제");
					list.clear();
					break;
					
				case 4:
					break;

				default:
					System.out.println("1~4 범위 내에서 선택하세요");
					break;
				}
				System.out.println();

				if (menu == 4) {
					System.out.println("종료합니다.");
					break;
				}

			}

		} catch (Exception e) {
			System.out.println("에외 상황 : " + e + "발생");
		}

	}

}
