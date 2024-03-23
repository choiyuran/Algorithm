class Solution {
    public String solution(int age) {
        StringBuilder answer = new StringBuilder();
        
        while(age > 0) {
            int num = age % 10;
            answer.insert(0,(char)('a' + num));
            age /= 10;
        }
        return answer.toString();
    }
}