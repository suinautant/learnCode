package ArrayCopyDemo;

public class ArrayCopyDemo {
  public static void main(String[] args) throws Exception {
    String[] copyFrom = { "Affogato", "Americano", "Cappuccino", "Corretto", "Cortado", "Doppio", "Espresso",
        "Frappucino", "Freddo", "Lungo", "Macchiato", "Marocchino", "Ristretto" };

    String[] copyTo = new String[7];
    System.arraycopy(copyFrom, 2, copyTo, 0, 7);
    // String[] copyTo = System.arraycopy(copyFrom, 2, copyTo, 0, 7); // err
    for (String coffee : copyTo) {
      System.out.print(coffee + " ");
    }
  }
}
