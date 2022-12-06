class CSVMonster:
    def __init__(self):
        self.list_data = []

#import and read csv file
    def read_csv(self, file_name):
        try:
            with open(file_name, "r") as file:
                data = csv.reader(file)
                for row in data:
                    self.list_data.append(row)
                print("Load data successfully")
        except:
            print("Pleas check filename again")
 
#View the first 5 rows of data in a table.
    def head(self, n=5):
        header = self.list_data[0]
        rows = self.list_data[1:n+1]
        print(header)
        for row in rows:
            print(row)

#View the last 5 rows of data in a table.
    def tail(self, n=5):
        header = self.list_data[0]
        rows = self.list_data[-n:]
        print(header)
        for row in rows:
            print(row)

#filter data
    def filter_city(self, city):
        result = []
        for row in self.list_data:
            if city == row[2]:
                result.append(row)
        for row in result:
            print(row)
    
#calculate average price
    def find_avg_price(self):
        prices = []
        for row in self.list_data[1:]:
             prices.append(int(row[3]))
        avg_price = sum(prices) / len(prices)
        print(f"Average price per night: {avg_price}")
