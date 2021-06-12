package sec01.exam07;

import java.util.HashMap;
import java.util.Map;

class Student {
	public int sno;
	public String name;

	public Student(int sno, String name) {
		this.sno = sno;
		this.name = name;
	}

	public boolean equals(Object obj) {
		if (obj instanceof Student) {
			Student student = (Student) obj;
			return (sno == student.sno) && (name.equals(student.name));
		} else {
			return false;
		}
	}

	public int hashCode() {
		return sno + name.hashCode();
	}
}

public class HashMapExam {

	public static void main(String[] args) {
		Map<Student, Integer> map = new HashMap<>();

		map.put(new Student(1, "È«±æµ¿"), 95);
		map.put(new Student(1, "È«±æµ¿"), 95);

		System.out.println("ÃÑ °´Ã¼ ¼ö : " + map.size());

	}

}
