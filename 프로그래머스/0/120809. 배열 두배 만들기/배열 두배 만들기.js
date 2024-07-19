function solution(numbers) {
    var answer = [];
    numbers.forEach(item => {
        let i = 0;
        i = item * 2;
        answer.push(i);
    })
    return answer;
}