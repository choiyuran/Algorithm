function solution(rank, attendance) {
    // 참여한 학생을 담을 배열
    let attend = [];
    
    // 참여 가능한 학생의 등수와 인덱스를 함께 저장
    for (let i = 0; i < attendance.length; i++) {
        if (attendance[i]) {
            attend.push({ index: i, rank: rank[i] });
        }
    }
    
    // 등수가 높은 순서대로 정렬(오름차순)
    attend.sort((a, b) => a.rank - b.rank);
    
    // 상위 3명을 뽑아냄
    const topThree = attend.slice(0, 3);
    
    // 결과 계산
    const a = topThree[0].index;
    const b = topThree[1].index;
    const c = topThree[2].index;
    
    return 10000 * a + 100 * b + c;
}