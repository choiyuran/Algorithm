function solution(arr) {
    var answer = [];
    for(let i of arr) {
        for(let n = 1; n <= i; n++) {
            answer.push(i);
        }
    }
    return answer;
}