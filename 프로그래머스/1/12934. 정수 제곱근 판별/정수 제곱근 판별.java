class Solution {
    public long solution(long n) {
        long answer = -1;
        for(long i = 1; i <= Math.sqrt(n); i++) {
            if(n / (double)i == i && n % i == 0) {
                answer = (i + 1) * (i + 1);
                break;
            }
        }
        return answer;
    }
}