function solution(picture, k) {
    const answer = [];
    const tempArr = picture.map(x => x.split('').map(x1 => x1.repeat(k)).join(''));
    
    for (let i=0; i<tempArr.length; i++) {
        for(let j=0; j<k; j++){
            answer.push(tempArr[i]);
        }
    }
    return answer;
}