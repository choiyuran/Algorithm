import java.util.Scanner;

public class Solution {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String a = sc.next();
        String b = sc.next();
        String result = "";
        result += a;
        result += b;
        
        result = result.replace(" ", "");
        System.out.println(result);
    }
}