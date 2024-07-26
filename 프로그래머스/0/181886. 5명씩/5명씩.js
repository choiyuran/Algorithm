function solution(names) {
    var answer = [];
    answer.push(names[0]);
    for(let i = 5; i < names.length; i+=5) {
        answer.push(names[i]);
    }
    return answer;
}