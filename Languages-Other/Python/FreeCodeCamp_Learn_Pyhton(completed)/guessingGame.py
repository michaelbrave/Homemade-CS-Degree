secret_word = "kenobi"
guess = ""
count = 0
limit = 5

while guess != secret_word and count < limit:
    guess = input("enter a guess: ")
    count += 1

if count == limit:
    print("out of guesses")
else:
    print("you win")
