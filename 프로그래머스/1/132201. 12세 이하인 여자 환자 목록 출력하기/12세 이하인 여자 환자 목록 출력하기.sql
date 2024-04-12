-- 코드를 입력하세요
SELECT PT_NAME, PT_NO, GEND_CD, AGE,
case
when TLNO is null then "NONE"
when TLNO is not null then TLNO
end as TLNO
    from PATIENT
    where age <= 12 and GEND_CD = "W"
    order by age desc, PT_NAME;