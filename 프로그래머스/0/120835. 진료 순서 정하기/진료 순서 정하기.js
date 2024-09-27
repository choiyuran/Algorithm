
function solution(emergency) {
    // 복사한 배열을 내림차순 정렬
    const copiedEmergency = [...emergency].sort((a, b) => b - a);
    
    // 진료순위를 기록할 배열 생성
    let rankArr = new Array(emergency.length).fill(0);
    
    // 진료 순위
    let count = 1;
    
    for(let i = 0; i < emergency.length; i++){
        // 내림차순된 배열은 우선 순위가 높은 순서대로 있기 때문에
        // 원본 배열에서 인덱스 번호를 찾음
        let index = emergency.indexOf(copiedEmergency[i]);
        
        // 진료순위 배열에서 해당 인덱스 자리에 순위를 기록
        // index는 수정할 위치
        // 1은 1개를 삭제하겠다는 의미
        // count는 해당 인덱스(index)에 삽입할 새로운 값
        rankArr.splice(index, 1, count);
        
        // 진료 순위를 증가시킨다
        count++;
    } 
    return rankArr;
}