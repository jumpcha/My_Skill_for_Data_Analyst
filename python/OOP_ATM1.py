class ATM:
    def __init__(self, username, password, balance):
        self.username = username
        self.password = password
        self.balance = balance
    #log in
    def log_in(self):
            us = input("Username: ")
            pw = int(input("Password: "))
            if us == self.username and pw == self.password:
                print("Congrat to log in")

                # deposit system
                us_want = input("deposit(1), withdraw(2), balance(3), transfer(4): ")
                if us_want == "1":
                    us_depo = int(input("How much do you want to deposit: "))
                    self.balance += us_depo
                
                # withdraw system
                elif us_want == "2":
                    us_wd = int(input("How much do you want to withdraw: "))
                    self.balance -= us_wd
                
                # balance check system
                elif us_want == "3":
                    print(f"The balance in your account: {self.balance} baht") 
                
                # transfer system
                elif us_want == "4":
                    to_account = input("Which account would you like to transfer money to: ")
                    us_tf = int(input("How much do you want to transfer: "))
                    self.balance -= us_tf
                    to_account.balance += us_tf


            else:
                print("Try")
               
## Create User
user1 = ATM("dum", 123456, 50000)
user2 = ATM("dang", 112233, 100000)
user3 = ATM("tong", 121212, 60000)
