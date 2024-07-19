function solution(cipher, code) {
    var answer = '';
    let i = code;
    while(cipher.length > 0) {
        if(i <= cipher.length) {
            answer += cipher[i-1];
            i += code;
        } 
        else {
            break;
        }
    }
    return answer;
}