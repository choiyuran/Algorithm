function solution(n, slicer, num_list) {
    var answer = [];
    var a = slicer[0];
    var b = slicer[1];
    var c = slicer[2];

    if (n === 1) {
        // n = 1 : 0번 인덱스부터 b번 인덱스까지
        answer = num_list.slice(0, b + 1);
    } 
    else if (n === 2) {
        // n = 2 : a번 인덱스부터 마지막 인덱스까지
        answer = num_list.slice(a);
    } 
    else if (n === 3) {
        // n = 3 : a번 인덱스부터 b번 인덱스까지
        answer = num_list.slice(a, b + 1);
    } 
    else if (n === 4) {
        // n = 4 : a번 인덱스부터 b번 인덱스까지 c 간격으로
        for (let i = a; i <= b; i += c) {
            answer.push(num_list[i]);
        }
    }
    
    return answer;
}