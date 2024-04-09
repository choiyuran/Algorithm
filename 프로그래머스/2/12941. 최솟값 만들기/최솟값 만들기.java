import java.util.*;
class Solution
{
    public int solution(int []A, int []B)
    {
        int answer = 0;
        Arrays.sort(A);

        Arrays.sort(B);
        int index = 0;
        int[] SB = new int[B.length];
        for(int i = B.length; i > 0; i--) {
            SB[index++] = B[i-1];
        }

        for(int i = 0; i < A.length; i++) {
            answer += A[i] * SB[i];
        }

        return answer;
    }
}