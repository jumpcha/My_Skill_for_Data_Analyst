# import pandas
import pandas as pd

customers = {
			"name": ["jump", "anna", "mary", "david"],
			"age": [25, 25, 20, 28]
}

# create dataframe from scratch
df = pd.DataFrame(customers)

# read csv file
store = pd.read_csv("my_data/Sample SuperStore.csv")

# preview first five rows
store.head()

# preview last rows
store.tail()

# see df information
store.info()

# shape attribute
store.shape 

# column names 
store.columns 

# clean columns names
# 1. make it lower case
# 2. replace " " with "_"

col_names = list(store.columns)

clean_col_names = []

for name in col_names:
		temp = name.lower().replace(" ", "").replace("-", "")
		clean_col_names.append(temp)

## list comprehension (การเขียนให้สั้นลงจากcodeข้างบน)
clean_names = [name.lower().replace(" ", "").replace("-", "") for name in col_names]

# assign clean_names back to store df
store.columns = clean_names

# check missing value (ถ้าออกมาเป็น 0 แสดงว่า dataframe สมบูรณ์ไม่มี missing value)
store.isna().sum() 

# select columns 
mini_store = store[['productname', 'sales', 'profit']]

# filter rows
# .query()
high_sale = store.query("sale > 900")

# filter multiple conditions
high_sale = store.query("sale > 900")[['productname', 'sales', 'profit']]

store['segment'].value_counts()

df1 = store.query("segment == 'Consumer' and sales > 500")[['segment', 'sales']]

# groupby + aggregate
store.groupby('state')['sales'].sum() 

store.groupby(['state', 'segment'])[['sales', 'profit', 'quatity']].sum()

result = store.groupby(['state', 'segment'])[['sales', 'profit', 'quatity']]\
		.agg(['mean', 'sum', 'min', 'max',' std']))\
		.reset_index()

# export csv
result.to_csv("output/sales_by_state.csv")
