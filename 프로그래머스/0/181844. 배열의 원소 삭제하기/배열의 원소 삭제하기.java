import java.util.*;

class Solution {
    public int[] solution(int[] arr, int[] delete_list) {
        HashSet<Integer> deleteSet = new HashSet<Integer>();
        for (int deleteValue : delete_list) {
            deleteSet.add(deleteValue);
        } 

        int[] answer = new int[arr.length];
        int index = 0;
        for (int value : arr) {
            if (!deleteSet.contains(value)) {
                answer[index++] = value;
            }
        }

        return Arrays.copyOf(answer, index);
    }
}