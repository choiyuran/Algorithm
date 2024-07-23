function solution(myString, pat) {
    var answer = 0;
    myString = myString.toLowerCase();
    if(myString.includes(pat.toLowerCase())) {
        answer = 1;
    }
    return answer;
}