# Syntax
select(data_frame, column_index)

select(mtcars, 1:5) 
select(mtcars, starts_with("h"))
select(mtcars, ends_with("p"))

# ดึง column ที่ชื่อ column มีตัว a ประกอบ
select(mtcars, contains("a"))

# ดึง column crab และทุก column
select(mtcars, crab, everything()) 

# Create New column
## หลัง $ ต้องเป็นชื่อใหม่ที่ไม่มีใน data frame
mtcars$model <- rownames(mtcars) 

## วิธีลบ rownames
rownames(mtcars) <- NULL 

## ย้าย column model ไปไว้ column แรก
mtcars <- select(mtcars, model, everything()) 

# Data Pipeline
## Like a => select(mtcars, mpg, hp, wt)
mtcars %>%
	select(mpg, hp, wt)
