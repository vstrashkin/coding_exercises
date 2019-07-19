# P1) Write a number guessing game. Keep asking the user to guess a number between 1 and 100
# until they guess correctly. If the number the user guesses is too high, tell them so.
# Same with if the number is too low. Congratulate them when they’ve guessed the correct
# number and tell them how many guesses they used to get to the correct number.


guessnum = rand(1..100)

puts("Hi this is the Guess number game")
puts("Please input your guess from 1 to 100")
userguess = gets.to_i
count = 1

until guessnum == userguess do
  if userguess <= 0 || userguess > 100
      puts("Your input is invalid or out of the range, please try again")
  else
    if userguess < guessnum
      puts("Your guess number #{userguess} is too low, please try again")
    else
      puts("Your guess number #{userguess} is too big, please try again")
    end
  end
  count += 1
  puts("Please input your guess from 1 to 100")
  userguess = gets.to_i
end

puts("Congratulations! Your guess number #{userguess} is correct. Your number of attempts #{count}. Thank you")