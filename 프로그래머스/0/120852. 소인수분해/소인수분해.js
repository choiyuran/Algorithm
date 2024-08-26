function solution(n) {
    var answer = [];
    for(let i = 2; i <= n; i++) {
        while(n % i === 0) {
            if(!answer.includes(i)) {   // answer에 겹치는 숫자가 들어가지 않게 함
                answer.push(i);
            }
            n /= i;                    
        }
    }
    return answer;
}