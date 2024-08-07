function solution(keyinput, board) {
    // 초기 위치
    var x = 0; 
    var y = 0;

    // x와 y의 경계
    const maxX = Math.floor(board[0] / 2);
    const maxY = Math.floor(board[1] / 2);

    for (let i of keyinput) {       // 위로 이동
        if (i === 'up') {
            if (y < maxY) {
                y += 1; 
            }
        } else if (i === 'down') {      // 아래로 이동
            if (y > -maxY) {
                y -= 1; 
            }
        } else if (i === 'left') {      // 왼쪽으로 이동
            if (x > -maxX) {
                x -= 1; 
            }
        } else if (i === 'right') {     // 오른쪽으로 이동
            if (x < maxX) {
                x += 1; 
            }
        }
    }

    return [x, y];           // 최종 좌표 반환
}