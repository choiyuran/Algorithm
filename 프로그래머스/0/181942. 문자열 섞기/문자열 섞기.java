class Solution {
    public String solution(String str1, String str2) {
        String answer = "";
        while(str1.length() > 0) {
            answer += str1.charAt(0);
            answer += str2.charAt(0);
            
            str1 = str1.substring(1);
            str2 = str2.substring(1);
        }
        return answer;
    }
}