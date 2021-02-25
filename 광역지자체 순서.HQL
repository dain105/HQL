-- 카드 일합계 테이블에 주차 정보 추가
SELECT *, 
CASE WHEN T101.mer_mega_cty ='서울특별시' THEN '01'
       WHEN T101.mer_mega_cty ='부산광역시' THEN '02'
       WHEN T101.mer_mega_cty ='대구광역시' THEN '03'
       WHEN T101.mer_mega_cty ='인천광역시' THEN '04'
       WHEN T101.mer_mega_cty ='광주광역시' THEN '05'
       WHEN T101.mer_mega_cty ='대전광역시' THEN '06'
       WHEN T101.mer_mega_cty ='울산광역시' THEN '07'
       WHEN T101.mer_mega_cty ='세종특별자치시' THEN '08'
       WHEN T101.mer_mega_cty ='경기도' THEN '09'
       WHEN T101.mer_mega_cty ='강원도' THEN '10'
       WHEN T101.mer_mega_cty ='충청북도' THEN '11'
       WHEN T101.mer_mega_cty ='충청남도' THEN '12'
       WHEN T101.mer_mega_cty ='전라북도' THEN '13'
       WHEN T101.mer_mega_cty ='전라남도' THEN '14'
       WHEN T101.mer_mega_cty ='경상북도' THEN '15'
       WHEN T101.mer_mega_cty ='경상남도' THEN '16'
       WHEN T101.mer_mega_cty ='제주특별자치도' THEN '17'
       WHEN T101.mer_mega_cty ='전국' THEN '18'
	   ELSE '-9999'
       END AS sido_no,T101 
FROM DATA  T101
WHERE T101.DATE BETWEEN '20190101' AND '20201031'  -- 조건에 따라 추출 속도 차이가 있습니다.
;















