class ATM2:
    def __init__(self, name, location, balance):
        self.name = name
        self.location = location
        self.balance = balance
    
    #name account
    def account(self):
        print(f"account name: {self.name} \nlocation: {self.location} \nbalance: {self.balance}")
    
    #deposit system
    def deposit(self):
        us_depo = int(input("How much do you want to deposit: "))
        self.balance += us_depo
    
    #withdraw system
    def withdraw(self):
        us_wd = int(input("How much do you want to withdraw: "))
        if self.balance < us_wd:
            print("Sorry, the funds in your account are insufficient.")
        else:
            self.balance -= us_wd
    
    #transfer system
    def transfer(self):
        us_tran = int(input("How much do you want to transfer: "))
        to_ac = input("Which account would you like to transfer money to: ")
        self.balance -= us_tran
        return(f"Your balance: {self.balance}")
    
    #balance check system
    def balance_check(self):
        print(f"The balance in your account: {self.balance} baht")
      
## Create User
ac1 = ATM2("jump", "korat", 50000)
ac2 = ATM2("bas", "khonkean", 100000)
ac3 = ATM2("autt", "bangkok", 60000)
