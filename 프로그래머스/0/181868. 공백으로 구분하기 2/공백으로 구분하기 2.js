function solution(my_string) {
    var answer = [];
    my_string = my_string.replace(/\s+/g, ' ').trim();
    answer = my_string.split(' ');
    return answer;
}