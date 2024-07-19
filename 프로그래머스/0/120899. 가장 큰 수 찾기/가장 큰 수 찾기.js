function solution(array) {
    var answer = [];
    // 깊은 복사
    let arr = JSON.parse(JSON.stringify(array));
    arr.sort((a,b)=>b-a);
    answer.push(arr[0]);
    
    for(let i = 0; i < array.length; i++) {
        if(array[i] === arr[0]) {
            answer.push(i);
        }
    }
    
    return answer;
}