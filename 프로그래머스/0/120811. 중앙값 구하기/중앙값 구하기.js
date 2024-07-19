function solution(array) {
    var answer = 0;
    array.sort((a,b) => a - b);
    let i = array.length / 2;
    answer = array[Math.floor(i)];
    return answer;
}