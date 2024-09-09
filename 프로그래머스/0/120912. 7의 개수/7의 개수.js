function solution(array) {
    var answer = 0;
    for(let i of array) {
        i = i.toString()
        for(let n of i) {
            if(n === '7') {
                answer++;
            }
        }
    }
    return answer;
}