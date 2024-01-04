class Solution {
    public int solution(String A, String B) {
        int answer = 0;
        String result = A;
     
        for(int i = 0; i < A.length(); i++) {
        	if(result.equals(B)) {
        		return answer;
        	}
        	
        	String a = result.substring(result.length() - 1);
        	result = a += result.substring(0, result.length()-1);
        	answer++;
        }
        
        return -1;
    }
}