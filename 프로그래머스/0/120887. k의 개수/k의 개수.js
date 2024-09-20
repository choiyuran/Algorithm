function solution(i, j, k) {
    let answer = 0;
    for (let n = i; n <= j; n++) {
        let s = n.toString();                 // 정수를 문자열로 변환
        for (let s2 of s) {
            if (s2 === k.toString()) {        // k도 문자열로 변환하여 비교
                answer++;
            }
        }
    }
    return answer;
}