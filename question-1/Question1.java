import java.util.*;

public class Question1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int t = sc.nextInt(); 
        
        while (t-- > 0) {
            int n = sc.nextInt();
            int x = sc.nextInt();
            int[] h = new int[n];

            for (int i = 0; i < n; i++) {
                h[i] = sc.nextInt();
            }

            Arrays.sort(h); 

            long maxHP = 0;
            long decrement = (long) (n - 1) * x;

            for (int i = 1; i < n; i++) {
                long currentHP = h[i] + decrement;
                maxHP = Math.min(maxHP, currentHP);
                decrement -= 1;
            }

            System.out.println(maxHP);
        }

        sc.close();
    }
}
