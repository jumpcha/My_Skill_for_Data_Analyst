# install gazpacho
!pip install gazpacho

# import function/module
from gazpacho import Soup
# เป็นฟังก์ชันที่ใช้ยิง requests ไปที่เว็บไซท์ที่เราต้องการ
import requests

# การดึงข้อมูลจากเว็บไซท์
# 1. have url
# 2. get request that url
# 3. parsing HTML data
# 4. find HTML element that you want

url = "https://www.imdb.com/search/"

response = requests.get(url)

# check requests status should output 200
response.status_code 

imdb = Soup(response.text)

# strip() use delete tags
imdb.find("h1").strip()

result = imdb.find("h3", {'class': 'lister-item-header'})
for title in result:
		print(title.strip())

# get runtime (ความยาวหนัง)
result2 = imdb.find("span", {"class": "runtime"})
runtimes = [runtime.strip() for runtime in result2]
print(runtimes)

#dataframe
data = {
		"title": titles,
		"runtime": runtimes
}

df = pd.DataFrame(data)
