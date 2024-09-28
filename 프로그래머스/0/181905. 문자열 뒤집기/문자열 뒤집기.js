function solution(my_string, s, e) {
    var answer = '';
    let s1 = my_string.slice(0, s);            // s 이전 부분
    let s2 = my_string.slice(s, e + 1);        // s부터 e까지 부분
    let s3 = my_string.slice(e + 1);           // e 이후 부분
    let s2Reverse = '';

    // s2를 뒤집기
    for (let i = s2.length - 1; i >= 0; i--) {
        s2Reverse += s2.charAt(i);
    }

    answer += s1;            // s 이전 부분 추가
    answer += s2Reverse;     // 뒤집힌 부분 추가
    answer += s3;            // e 이후 부분 추가

    return answer;
}