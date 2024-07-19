function solution(myString, pat) {
    var answer = 0;
    let s = '';
    for(let i of myString) {
        if(i === "A") {
            s += "B";
        }
        else if(i === "B") {
            s += "A";
        }
    }
    if(s.includes(pat)) {
        answer = 1;
    }
    return answer;
}