SELECT a.apnt_no, p.pt_name, p.pt_no, a.mcdp_cd, d.dr_name, a.apnt_ymd
    FROM appointment a
    JOIN doctor d ON a.mddr_id = d.dr_id
    JOIN patient p ON a.pt_no = p.pt_no
    WHERE (MONTH(apnt_ymd) = '04' AND DAY(apnt_ymd) = '13')
    AND apnt_cncl_yn = 'N'
    ORDER BY apnt_ymd;

