function solution(dots) {
    var answer = 0;
    let x = [];     // x값만 뽑아낼 배열
    let y = [];     // y값만 뽑아낼 배열
    for(let i = 0; i < dots.length; i++) {
        x.push(dots[i][0]);
        y.push(dots[i][1]);
    }
    
    let minX = Math.min(...x);      // x값에서 최소값
    let maxX = Math.max(...x);      // x값에서 최대값
    let minY = Math.min(...y)       // y값에서 최소값
    let maxY = Math.max(...y);      // y값에서 최대값
    
    let resultX = maxX - minX;      // 결과x = 최대값x - 최소값x
    let resultY = maxY - minY;      // 결과y = 최대값y - 최소값y
    answer = resultX * resultY;
    return answer;
}