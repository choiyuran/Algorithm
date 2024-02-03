class Solution {
    public boolean solution(int x) {
        boolean answer = true;
        String str = x + "";
        int num = 0;
        for(int i = 0; i < str.length(); i++) {
            char s1 = str.charAt(i);
            num += s1 - '0';
        }
        if(x % num != 0) {
            answer = false;
        }
        return answer;
    }
}