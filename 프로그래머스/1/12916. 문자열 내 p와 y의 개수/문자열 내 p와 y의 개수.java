class Solution {
    boolean solution(String s) {
        boolean answer = true;
        s = s.toLowerCase();
        int n1 = 0;
        int n2 = 0;
        for(int i = 0; i < s.length(); i++) {
            if(s.charAt(i) == 'p') {
                n1++;
            }
            if(s.charAt(i) == 'y') {
                n2++;
            }
        }
        if(n1 == n2) {
            answer = true;
        }
        else {
            answer = false;
        }

        // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
        System.out.println("Hello Java");

        return answer;
    }
}