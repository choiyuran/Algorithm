function isUpperCase(str) {
    return str === str.toUpperCase();
}
function isLowerCase(str) {
    return str === str.toLowerCase();
}

function solution(my_string) {
    var answer = '';
    for(let i = 0; i < my_string.length; i++) {
        if(isUpperCase(my_string[i])) {
            answer += my_string[i].toLowerCase();
        }
        else {
            answer += my_string[i].toUpperCase();
        }
    }
    return answer;
}