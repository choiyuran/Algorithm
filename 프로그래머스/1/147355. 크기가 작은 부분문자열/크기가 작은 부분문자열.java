class Solution {
    public int solution(String t, String p) {
        int answer = 0; 
        long pNum = Long.parseLong(p); 

        for (int i = 0; i <= t.length() - p.length(); i++) {
            // t의 인덱스 번호를 볼때, p의 개수보다 적게 남은 인덱스 자리는 고려할 필요가 없음
            // ex) 첫번째 예제로 볼때, t.length()는 7이고 p.length()는 3이기 때문에
            // t의 592까지만 고려하면 되니까 인덱스 번호 4까지 고려하면 됨
            String sub = t.substring(i, i + p.length());
             long subNum = Long.parseLong(sub);
            if (subNum <= pNum) {
                answer++; 
            }
        }
        
        return answer;
    }
}