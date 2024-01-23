import java.util.Arrays;
class Solution {
    public String[] solution(String[] todo_list, boolean[] finished) {
        String[] answer = new String[finished.length];
        int index = 0;
        for(int i = 0; i < finished.length; i++) {
            if(!finished[i]) {
                answer[index] = todo_list[i]; 
                index++;
            }
        }
        return Arrays.copyOf(answer, index);
        
    }
}