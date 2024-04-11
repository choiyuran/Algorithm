class Solution {
    public int[] solution(int n, long left, long right) {
        int length = (int)(right - left + 1);
        int[] answer = new int[length];
        for(int i = 0; i < length; i++) {
            // left와 right에 해당하는 값들의 행과 열을 구해서 
            int row = (int)((left + i) / n);        // 행(가로)
            int col = (int)((left + i) % n);        // 열(세로)
            
            // 반환할 배열에 값을 넣어준다
            // 행과 열 두 숫자 중에서 큰 숫자에 +1을 하면 해당 값이 나오는 규칙
            answer[i] = Math.max(row, col) + 1;
        }
        
        return answer;
    }
}