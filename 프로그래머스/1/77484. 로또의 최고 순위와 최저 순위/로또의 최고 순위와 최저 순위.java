class Solution {
    public int[] solution(int[] lottos, int[] win_nums) {
        int[] answer = new int[2];
        int max = 0;
        int min = 0;
        for(int i = 0; i < lottos.length; i++) {                // 다 맞는 경우
            for(int j = 0; j < win_nums.length; j++) {
                if(lottos[i] == 0) {                            // 0이 다 맞는 경우
                    max++;
                    break;
                }
                else{
                    if(lottos[i] == win_nums[j]) {
                        max++;
                    }
                }
            }
        }
        for(int i = 0; i < lottos.length; i++) {            // 다 틀린 경우
            for(int j = 0; j < win_nums.length; j++) {
                if(lottos[i] == win_nums[j]) {
                    min++;
                }
            }
        }
        answer[0] = rank(max);
        answer[1] = rank(min);
        return answer;
    }

    static int rank(int count) {
        switch (count) {
            case 6 :
                return 1;
            case 5 :
                return 2;
            case 4 :
                return 3;
            case 3 :
                return 4;
            case 2 :
                return 5;
            default:
                return 6;
        }
    }
}