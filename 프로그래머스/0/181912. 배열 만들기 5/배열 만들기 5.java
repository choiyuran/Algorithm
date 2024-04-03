import java.util.*; 

class Solution {
    public int[] solution(String[] intStrs, int k, int s, int l) {
        int[] answer = new int[intStrs.length];
        int index = 0;
        for(int i = 0; i < intStrs.length; i++) {
            String str = intStrs[i].substring(s, s+l);
            int n = Integer.parseInt(str);
            if(n > k) {
                answer[index++] = n;
            }
        }
        answer = Arrays.copyOf(answer, index);
        return answer;
    }
}