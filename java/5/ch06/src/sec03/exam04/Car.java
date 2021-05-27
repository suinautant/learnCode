package sec03.exam04;

public class Car {
	String company = "Çö´ëÂ÷";
	String model;
	String color;
	int maxSpeed;

	Car() {
		this("Æ¼ÄÚ", "³ë¶û", 220);
	}

	Car(String model) {
		this(model, "»¡°­", 110);
	}
	
	Car(String model, String color) {
		this(model, color, 250);
	}
	
	Car(String model, String color, int maxSpeed) {
		this.model = model;
		this.color = color;
		this.maxSpeed = maxSpeed;
	}
}
