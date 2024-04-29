SELECT depart.dept_id, depart.dept_name_en, ROUND(AVG(emp.sal)) AS avg_sal
FROM hr_department depart
JOIN hr_employees emp
ON depart.dept_id = emp.dept_id
GROUP BY depart.dept_id, depart.dept_name_en
ORDER BY avg_sal DESC;