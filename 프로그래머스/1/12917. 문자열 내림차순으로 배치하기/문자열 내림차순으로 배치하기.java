import java.util.*;
class Solution {
    public String solution(String s) {
        String answer = "";
        Character[] arr = new Character[s.length()];
        for(int i = 0; i < s.length(); i++) {
            arr[i] = s.charAt(i);
        }
        Arrays.sort(arr, Collections.reverseOrder());
        for(Character c : arr) {
            answer += c;
        }
        return answer;
    }
}