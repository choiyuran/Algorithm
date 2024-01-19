class Solution {
    public int[] solution(int[] num_list) {
        int[] answer = new int[num_list.length + 1];
        int last = num_list.length - 1;
        int index = last - 1;

        for (int i = 0; i < num_list.length; i++) {
            answer[i] = num_list[i];
        }

        if (num_list[last] > num_list[index]) {
            answer[num_list.length] = num_list[last] - num_list[index];
        } else {
            answer[num_list.length] = num_list[last] * 2;
        }

        return answer;
    }
}