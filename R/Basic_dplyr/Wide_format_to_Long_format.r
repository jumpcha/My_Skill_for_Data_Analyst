WorldPhones %>%
	as.data.frame() %>% ## การเปลี่ยนข้อมูลให้เป็น dataframe
	rowname_to_column(var = "year") %>% ## การเปลี่ยน rowname เป็น column
	pivot_longer(N.Amer:Mid.Amer, 
							 names_to = "Region",
							 values_to = "Sales")

## long -> wide
long_data %>%
	pivot_wider(names_from = "Region",
							values_from = "Sales")
