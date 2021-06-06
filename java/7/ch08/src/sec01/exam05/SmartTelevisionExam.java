package sec01.exam05;

import sec01.exam03.RemoteControl;

public class SmartTelevisionExam {

	public static void main(String[] args) {
		SmartTelevision tv = new SmartTelevision();
		
		RemoteControl rc = tv;
		Searchable searchable = tv;
	}

}
