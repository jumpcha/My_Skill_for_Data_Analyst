mtcars %>%
	group_by(am) %>%  ## group_by() ต้องมาก่อน summarise() เสมอ
	summarise(
		mean(mpg),
		sum(mpg),
		min(mpg),
		max(mpg),
		var(mpg),
		sd(mpg),
		median(mpg),
		n() ## COUNT(*)
	)
