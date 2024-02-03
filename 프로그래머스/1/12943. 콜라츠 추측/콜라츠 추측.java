class Solution {
    public int solution(int num) {
        int answer = 0;
        long n = (long)num;
        if(n == 1) {
            answer = 0;
        }
        else {
             while(n != 1) {
                if(n % 2 == 0) {
                    n /= 2;
                }
                else {
                    n *= 3;
                    n += 1;
                }
                answer++;
                 if(answer == 500) {
                     answer = -1;
                     break;
                 }
            }
        }
       
        return answer;
    }
}