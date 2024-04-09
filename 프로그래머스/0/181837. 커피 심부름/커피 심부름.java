class Solution {
    public int solution(String[] order) {
        int answer = 0;
        int americano = 0;
        int cafe = 0;
        for(int i = 0; i < order.length; i++) {
            if(order[i].contains("cafe")) {                       // 아이스
                cafe++;
            }
             else if(order[i].contains("americano")){                  // 뜨거운
                americano++;
             }
             else {                                              // 아무거나
                 americano++;
             }
        }
        answer = cafe * 5000 + americano * 4500;
        return answer;
        
    }
}