mtcars %>%
	select(mpg, hp, wt) %>%
	filter(hp>100 & wt < 2) ## & = and

mtcars %>%
	select(mpg, hp, wt) %>%
	filter(hp>100 | wt <2) ## | = or

mtcars %>%
	select(mpg, hp, wt) %>%
	filter(between(mpg,25,30)) ## ดึงเฉพาะค่าที่อยู่ในช่วง 25-30

mtcars %>%
	select(mpg, cyl) %>%
	filter(cyl %in% c(4,6)) ## ดึงข้อมูล cyl ที่มีค่าเท่ากับ 4 และ 6

mtcars %>%
	select(model, mpg, hp, wt) %>%
	filter(grepl("^M", model)) ## ดึงข้อมูลที่ model ขึ้นต้นด้วยตัว M (ต้องใช้ grepl)
