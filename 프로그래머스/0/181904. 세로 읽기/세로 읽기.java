class Solution {
    public String solution(String my_string, int m, int c) {
        String answer = "";
        while(my_string.length() > 0) {
            int endIndex = Math.min(my_string.length(), m);
            String s = my_string.substring(0, endIndex);
            if(c <= s.length()) { 
                answer += s.charAt(c-1);
            }
            my_string = my_string.length() > m ? my_string.substring(m) : "";
        }
        
        return answer;
    }
}