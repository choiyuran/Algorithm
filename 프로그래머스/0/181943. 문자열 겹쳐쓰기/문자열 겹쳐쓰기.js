function solution(my_string, overwrite_string, s) {
    var answer = '';
    let i = overwrite_string.length + s;   // overwirte_string을 제외하고 가져올 뒷부분 시작 인덱스
    let front = my_string.slice(0, s);     // 제외할 문자열 전까지
    let end = '';                     
    // overwrite_string을 제외하고,
    // 가져올 뒷부분이 남아있다면 가져온다.
    if(my_string.length > overwrite_string.length + s) {    
        end = my_string.slice(i);
    }
    answer = front += overwrite_string += end;
    return answer;
}