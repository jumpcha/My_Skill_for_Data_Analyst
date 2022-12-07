inner_join(table1,
					 table2,
					 by = "name") ## ใน by คือต้องการjoinด้วย column ไหน

left_join(table1,
					 table2,
					 by = "name")

right_join(table1,
					 table2,
					 by = "name")

full_join(table1,
					 table2,
					 by = "name")
           
# Join by Data Pipeline
table_1 %>%
	full_join(table_2, by = "name") %>%
	filter(name %in% c("John", "Paul"))
  
table_2 %>%
	inner_join(table_2, by = "name") %>%
	filter(name %in% c("John", "Paul"))
  
table_3 %>%
	left_join(table_2, by = "name") %>%
	filter(name %in% c("John", "Paul"))

table_1 %>%
	full_join(table_2, by = c("name" = "nm")) %>% ## กรณีที่ชื่อ column ที่จะใช้ join กันไม่ตรงกัน 
	filter(name %in% c("John", "Paul"))
