SELECT cd.customer_id, cd.first_name, cd.last_name, cs.size, cg.grade
FROM CustomerDetails cd
JOIN CustomerSize cs ON cd.customer_id = cs.customer_id
JOIN CustomerGrade cg ON cd.customer_id = cg.customer_id
WHERE cs.size = 'S' -- หรือกำหนดขนาดลูกค้าย่อยตามที่คุณต้องการ
   OR cg.grade IN ('C', 'D') 
   OR (YEAR(CURDATE()) - YEAR(cd.birth_date)) < 18; -- ค้นหาลูกค้าที่อายุน้อยกว่า 18 ปี
