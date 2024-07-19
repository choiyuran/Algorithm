function solution(my_string) {
    var answer = 0;
    my_string = my_string.replaceAll(/[a-z|A-Z]/g, '');
    for(let i = 0; i < my_string.length; i++){
        let n = parseInt(my_string[i]);
        answer += n;
    }    
    return answer;
}