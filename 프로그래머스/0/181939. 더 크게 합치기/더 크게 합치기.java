class Solution {
    public int solution(int a, int b) {
        int answer = 0;
        String s1 = a + "";
        String s2 = b + "";
        
        String result = "";
        String result2 = "";
        result += a;
        result += b;
        
        result2 += b;
        result2 += a;
        
        int sum = Integer.parseInt(result);
        int sum2 = Integer.parseInt(result2);
        
        if(sum > sum2) {
            answer = sum;
        }
        else if(sum2 > sum) {
            answer = sum2;
        }
        else {
            answer = sum;
        }
        
        return answer;
    }
}