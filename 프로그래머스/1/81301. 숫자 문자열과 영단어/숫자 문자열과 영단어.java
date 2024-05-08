import java.util.*;
class Solution {
    public int solution(String s) {
        List<String> numList = Arrays.asList("0", "1", "2", "3", "4", "5", "6", "7", "8", "9");
        List<String> enList = Arrays.asList(
            "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine");
        
        for(int i = 0; i < enList.size(); i++) {
            if(s.contains(enList.get(i))) {
                s = s.replace(enList.get(i), numList.get(i));
            }
        }
        
        int answer = Integer.parseInt(s);
        return answer;
    }
}