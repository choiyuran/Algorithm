class Solution {
    public int solution(int hp) {
        int answer = 0;
        int n1 = hp / 5;
        int result1 = hp % 5;
        
        int n2 = result1 / 3;
        int result2 = result1 % 3;
        
        int n3 = result2 / 1;
        
        answer = n1 + n2 + n3;
        return answer;
    }
}