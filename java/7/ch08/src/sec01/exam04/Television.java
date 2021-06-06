package sec01.exam04;

import sec01.exam03.RemoteControl;

public class Television implements RemoteControl {
	private int volume;

	public void turnOn() {
		System.out.println("TV¸¦ ÄÕ´Ï´Ù.");
	}

	public void turnOff() {
		System.out.println("TV¸¦ ²ü´Ï´Ù.");
	}

	public void setVolume(int volume) {
		if (volume > RemoteControl.MAX_VOLUME) {
			this.volume = RemoteControl.MAX_VOLUME;
		} else if (volume < RemoteControl.MIN_VOLUME) {
			this.volume = RemoteControl.MIN_VOLUME;
		} else {
			this.volume = volume;
		}
		System.out.println("ÇöÀç TV º¼·ý : " + this.volume);
	}
}
