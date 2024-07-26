function solution(numbers, n) {
    var answer = 0;
    for(let i of numbers) {
        if(answer <= n) {
            answer += i;    
        }
    }
    return answer;
}