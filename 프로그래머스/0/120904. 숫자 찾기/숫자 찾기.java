class Solution {
    public int solution(int num, int k) {
        String s = num + ""; 
        String ks = k + ""; 
        
        int index = s.indexOf(ks);
        return index >= 0 ? index + 1 : -1;
    }
}