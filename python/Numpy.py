Numerical Python
import numpy as np

numbers = [1,5,9,12]

# change list to array
## list ไม่เหมาะกับการนำมาคำนวณทางสถิติต้องเปลี่ยนเป็น array
arr_numbers = np.array(numbers)

# Answer = [2,10,18,24]
arr_numbers * 2 

#statistics
arr_numbers.mean()
arr_numbers.sum()

print(np.mean(arr_numbers))
print(np.sum(arr_numbers))
print(np.median(arr_numbers))
print(np.std(arr_numbers))
print(np.min(arr_numbers))
print(np.max(arr_numbers))

# matrix => 2D array
a = np.array([ [1,2], [3,4], dtype = int)

# dot notation
b = np.array([ [5,0], [1,2] ])
print(a, "\n\n", b)

a.dot(b)
