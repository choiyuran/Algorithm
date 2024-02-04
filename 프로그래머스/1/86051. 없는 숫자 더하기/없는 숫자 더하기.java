class Solution {
    public int solution(int[] numbers) {
     int answer = 0;
        int[] num = new int[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
        for(int i = 0; i < num.length; i++) {
            boolean isFound = false;
            for(int j = 0; j < numbers.length; j++) {
                if(num[i] == numbers[j]) {
                    isFound = true;
                    break;
                }
            }
            if (!isFound) {
                answer += num[i];
            }
        }
        return answer;
    }
}