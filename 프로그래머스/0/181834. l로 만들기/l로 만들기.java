class Solution {
    public String solution(String myString) {
        char c = 'l';
        int lnum = (int)c;
        for(int i = 0; i < myString.length(); i++) {
            int n = (int)myString.charAt(i);
            if(n < lnum) {
                myString = myString.replace(myString.charAt(i), c);
            }
        }
        return myString;
    }
}