mtcars %>%
	select(mpg, hp, wt) %>%
	filter(hp>100 & wt < 2) %>%
	arrange(hp) ## เรียงจากน้อยไปมาก

mtcars %>%
	select(mpg, hp, wt) %>%
	filter(hp>100 & wt < 2) %>%
	arrange(desc(hp)) ## เรียงจากมากไปน้อย
