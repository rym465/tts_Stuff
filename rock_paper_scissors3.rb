puts "Welcome to Rock Paper Scissors for Windows"
sleep (1)
puts "A strategic game for NERDS!"
sleep (1)
puts
puts "What is your name"
name = gets.chomp.capitalize
puts
puts "Hi #{name}.  Nice to meet you"
puts
puts "Your opponent will be computer-generated.  Please give him a name"
pc_name = gets.chomp.capitalize
puts
puts "#{pc_name} says he's pleased to make your acquaintance"
sleep(2)
puts
puts "LETS GET READY TO RUMBLE!!!!"
sleep(1)
puts
play_again = "Yes"

pc_score = 0
name_score = 0
until play_again == "No" do

elements = ["ROCK", "PAPER", "SCISSORS"]

puts "#{name}, please name your selection"
element = gets.chomp.capitalize
puts "#{name}, you selected --------> #{element}"

puts "#{pc_name} will now make a selection"
element_2 = elements.sample.downcase.capitalize
puts "#{pc_name} selected-----------> #{element_2}"
sleep(1)

#If Statements

 if element == "Rock" && element_2 == "Rock"
   puts "****We have a Tie****"
 elsif element == "Rock" && element_2 == "Paper"
   puts "...And the winner is....."
   sleep(1)
   puts "***********************************"
   puts "#{pc_name}"
   pc_score += 1
 elsif element == "Rock" && element_2 == "Scissors"
   puts "...And the winner is....."
   sleep(1)
   puts "***********************************"
   puts "#{name}"
   name_score += 1
   puts
 elsif element == "Paper" && element_2 == "Paper"
   puts "****We have a Tie****"
   puts
 elsif element == "Paper" && element_2 == "Scissors"
   puts "...And the winner is....."
   sleep(1)
   puts "***********************************"
   puts "#{pc_name}"
   pc_score += 1
   puts
 elsif element == "Paper" && element_2 == "Rock"
   puts "...And the winner is....."
   sleep(1)
   puts "***********************************"
   puts "#{name}"
   name_score += 1
   puts
 elsif element == "Scissors" && element_2 == "Scissors"
   puts "****We have a Tie****"
   puts
 elsif element == "Scissors" && element_2 == "Rock"
   puts "...And the winner is....."
   sleep(1)
   puts "***********************************"
   puts "#{pc_name}"
   pc_score += 1
   puts
 elsif element == "Scissors" && element_2 == "Paper"
   puts "...And the winner is....."
   sleep(1)
   puts "***********************************"
   puts "#{name}"
   name_score += 1
   puts
   
 puts "The Score is #{pc_name} #{pc_score} , #{name} #{name_score}"

 puts "would you like to play again? (Yes or No)"
 play_again = gets.chomp.capitalize
end
end