function solution(myStr) {
    // a 또는 b 또는 c를 구분자로 나눈다
    // 슬러시는 정규표현식의 시작과 끝을 의미
    const parts = myStr.split(/a|b|c/);
    
    // 빈 문자열을 제거하기
    const filteredParts = parts.filter(part => part != "")
    
    // 결과 배열이 비어 있으면 EMPTY를 반환
    if (filteredParts.length === 0) {
        return ["EMPTY"];
    }
    
    return filteredParts;
}