class Solution {
    public int solution(int[] absolutes, boolean[] signs) {
        int answer = 0;
        int num = 0;
        for(int i = 0; i < absolutes.length; i++) {
            num = absolutes[i];
            if(signs[i] == false) {
                num = absolutes[i] * -1; 
            }
             answer += num;
        }
        return answer;
    }
}