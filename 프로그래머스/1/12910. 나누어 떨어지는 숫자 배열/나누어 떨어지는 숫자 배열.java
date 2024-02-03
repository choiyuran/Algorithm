import java.util.*;
class Solution {
    public int[] solution(int[] arr, int divisor) {
        int[] answer = new int[arr.length];
        int index = 0;
        
        for(int i = 0; i < arr.length; i++) {
            if(arr[i] % divisor == 0) {
                answer[index++] = arr[i];
            }
        }
        
        answer = Arrays.copyOf(answer, index);
        Arrays.sort(answer);
        
        if(index == 0) {
            return new int[]{-1};
        }
       
        return answer;
    }
}