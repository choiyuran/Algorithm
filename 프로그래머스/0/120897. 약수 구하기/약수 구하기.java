import java.util.*;

class Solution {
    public int[] solution(int n) {
        int[] answer = new int[n];
        int count = 0;
        int index = 0;
        for(int i = 1; i <= n; i++) {
            if(n % i == 0) {
                count++;
                answer[index++] = i;
            }
        }
        answer = Arrays.copyOf(answer, count);
        Arrays.sort(answer);
                
        return answer;
    }
}