class Solution {
    public int solution(int n) {
        int answer = 0;
        int max = n / 2;
        for(int i = 1; i <= max; i++) {
            if(n % i == 0) {
                answer++;
            }
        }
        answer++;
        return answer;
    }
}