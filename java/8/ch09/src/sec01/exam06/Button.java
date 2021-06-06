package sec01.exam06;

public class Button {
	static interface OnClickListener {
		void onClick();
	}

	OnClickListener listener;

	void SetOnClickListener(OnClickListener listener) {
		this.listener = listener;
	}

	void touch() {
		listener.onClick();
	}

}
