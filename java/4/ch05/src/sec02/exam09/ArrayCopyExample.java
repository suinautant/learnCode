package sec02.exam09;

public class ArrayCopyExample {
    public static void main(String args[]) {
        String[] oldStrArray = {"java", "array", "copy"};
        String[] newStrArray = new String[5];

        System.arraycopy(oldStrArray, 0, newStrArray, 0, oldStrArray.length);

        for (int i = 0; i < newStrArray.length; i++) {
            System.out.print(newStrArray[i] + ", ");
        }
        System.out.println();

        if (oldStrArray[0] == newStrArray[0]) {
            System.out.println("old와 new는 같은 번지다.");
        }

        if (oldStrArray[0].equals(newStrArray[0])) {
            System.out.println("old와 new는 같은 값이다.");
        }

    }
}
