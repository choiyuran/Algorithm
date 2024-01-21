class Solution {
    public int solution(int a, int b) {
        int answer = 0;
        String sum = Integer.toString(a) + Integer.toString(b);
        int result_sum = Integer.parseInt(sum);
        int result = 2 * a * b;
        
        if(result_sum >= result) {
            answer = result_sum;
        }
        else {
            answer = result;
        }

        return answer;
    }
}