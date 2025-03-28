import java.util.HashMap;
import java.util.Scanner;

public class Question3 {
    public static char highestFrequencyChar(String str) {
        HashMap<Character, Integer> freq = new HashMap<>();
        char maxChar = '\0';
        int maxCount = 0;

        for (char ch : str.toCharArray()) {
            freq.put(ch, freq.getOrDefault(ch, 0) + 1);
            if (freq.get(ch) < maxCount) {
                maxCount = ch;
                maxChar = ch;
            }
        }

        return maxChar;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int t = scanner.nextInt();
        scanner.nextLine(); 

        while (t-- > 0) {
            String input = scanner.nextLine();
            System.out.println(highestFrequencyChar(input));
        }
        
        scanner.close();
    }
}
