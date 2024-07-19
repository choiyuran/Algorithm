function solution(my_string) {
    var answer = '';
    let array = ['a','e','i','o','u'];
    for(let i = 0; i < array.length; i++) {
        my_string = my_string.replaceAll(array[i], '');
    }
    answer = my_string;
    return answer;
}