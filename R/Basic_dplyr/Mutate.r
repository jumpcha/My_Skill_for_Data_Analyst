# สร้าง column hello ขึ้นมาใหม่ใน dataframe mtcars ที่มีข้อมูลเป็นคำว่า hello
mtcars %>%
	mutate(hello = "hello") 

mtcars %>%
	mutate(hp_segment = if_else(hp<100, "low", "high"), ## hp_segment คือชื่อ column ใหม่ 
				 hp_segment2 = case_when(
						hp < 100 ~ 'low',
						hp < 200 ~ 'medium',
						TRUE ~ 'high')) ## cas_when ใช้ในกรณีมีมากกว่า 2 เงื่อนไข, TRUE เทียบเท่ากับ ELSE    

# mutate สามารถเขียนทับ column เดิมได้
mtcars %>%
	select(model, am) %>%
	mutate(am = if_else(am == 0, "Auto", "Manual")) ## ถ้าอยากสร้างทับ column เดิม ให้ใส่ชื่อคอลัมน์เดิมเข้าไปใน mutate
