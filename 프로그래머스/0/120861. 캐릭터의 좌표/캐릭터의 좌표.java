class Solution {
    public int[] solution(String[] keyinput, int[] board) {
        int[] answer = new int[2];
        int num = 0;
        int num2 = 0;
        for(int i = 0; i < keyinput.length; i++) {
            if(keyinput[i].equals("left")) {
                if(num == board[0] / 2 * -1) {
                    num = board[0] / 2 * -1;
                }
                else {
                    num -= 1;    
                }  
            }
            
            else if(keyinput[i].equals("right")) {
                if(num == board[0] / 2) {
                    num = board[0] / 2;
                }
                else {
                    num += 1;    
                }  
            }
            
            else if(keyinput[i].equals("up")) {
                if(num2 == board[1] / 2) {
                    num2 = board[1] / 2;
                }
                else {
                    num2 += 1;    
                }  
            }
            
            else if(keyinput[i].equals("down")) {
                if(num2 == board[1] / 2 * -1) {
                    num2 = board[1] / 2 * -1;
                }
                else {
                    num2 -= 1;    
                }  
            }
        }
        
        answer[0] = num;
        answer[1] = num2;
        return answer;
    }
}