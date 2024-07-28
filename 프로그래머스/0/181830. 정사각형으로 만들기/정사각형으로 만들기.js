function solution(arr) {
    const rowCount = arr.length; // 행의 수
    const colCount = arr[0].length;// 열의 수

    // 행의 수가 더 많을 경우
    if (rowCount > colCount) {
        for (let i = 0; i < rowCount; i++) {
            while (arr[i].length < rowCount) {
                arr[i].push(0);
            }
        }
    } 
    // 열의 수가 더 많을 경우
    else if (colCount > rowCount) {
        for (let i = 0; i < colCount; i++) {
            if(i >= arr.length) {
                arr.push(new Array(colCount).fill(0));
            }
        }
    }
    return arr;
}