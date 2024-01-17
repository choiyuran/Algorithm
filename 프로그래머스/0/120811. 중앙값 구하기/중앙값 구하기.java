class Solution {
    public int solution(int[] array) {
        int answer = 0;
        int tmp;
        for(int i = 0; i < array.length-1; i++) {
        	for(int j = i+1; j < array.length; j++) {
        		if(array[i] > array[j]) {
        			tmp = array[i];
        			array[i] = array[j];
        			array[j] = tmp;
        		}
        	}
        }
        int index = array.length / 2;
        answer = array[index];
        
        return answer;
    }
}