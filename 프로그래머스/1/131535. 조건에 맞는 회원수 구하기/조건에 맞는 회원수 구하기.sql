-- 코드를 입력하세요
SELECT count(user_id) as users
from user_info
where TO_CHAR(joined, 'yyyy') in '2021' and age between 20 and 29;
