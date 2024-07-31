function solution(spell, dic) {
    var answer = 2; 
    
    for (let i = 0; i < dic.length; i++) {
        let result = true;             // 현재 단어가 spell의 모든 알파벳을 포함하는지 여부
        for (let n = 0; n < spell.length; n++) {
            if (!dic[i].includes(spell[n])) {
                result = false;         // 현재 dic[i]의 값에 spell[n]의 값이 포함하지 않는다면
                break;                  // 나머지 spell도 확인할 필요가 없기 때문에 빠져나간다
            }
        }
        // 모든 알파벳이 현재 단어에 포함되면
        // dic배열을 더 이상 확인할 필요가 없기 때문에 빠져나감
        if (result) {
            answer = 1; 
            break; 
        }
    }
    return answer; 
}