--조건문 서브쿼리

SELECT 
	date, BigCategory, sum(value) as sum_value
FROM -- 서브쿼리
	(SELECT date, smallCategory, value
		date,  value ,
	CASE WHEN smallCategory = '' THEN  -- first condition
		WHEN smallCategory= '' THEN --second condition
		ELSE '기타'   END AS BigCategory
	FROM
		dw.data
	WHERE
		substr(base_ym,1,4) =2021
)d
GROUP BY
	date, BigCategory
ORDER BY
	date