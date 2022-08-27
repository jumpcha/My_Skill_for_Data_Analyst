## Rock Paper Scissors Game

import random

def game():
    hand = ('rock', 'paper', 'scissors')
    win = 0
    tie = 0
    lose = 0
    while True:
        user_hand = input("if you want to quit input 'quit' \nit's your turn: ")
        ai_hand = random.choice(hand)
        if (user_hand == ai_hand):
            print("ai_hand: ", ai_hand)
            print("Oh! you tie")
            tie = tie + 1
        elif (user_hand == 'rock' and ai_hand == 'scissors') or (user_hand == 'paper' and ai_hand == 'rock') or (user_hand == 'scissors' and ai_hand == 'paper'):
            print("ai_hand", ai_hand)
            print("Congrat! you win")
            win = win + 1
        elif user_hand == 'quit':
            print("thank you for your join")
            print(f"Result: win: {win} tie: {tie} lose: {lose}" )
            break
        else:
            print("ai_hand", ai_hand)
            print("sorry~~ you lose")
            lose = lose + 1
