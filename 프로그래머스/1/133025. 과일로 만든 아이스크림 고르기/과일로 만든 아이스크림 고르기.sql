-- 코드를 입력하세요
SELECT fi.FLAVOR
    from first_half fi, icecream_info ice
    where fi.flavor = ice.flavor and total_order > 3000 and ingredient_type = "fruit_based"
    order by fi.TOTAL_ORDER desc;
    