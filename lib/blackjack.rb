def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp  
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(current_card_total)
  answer = nil
  until answer == "s" || answer == "h" do 
    prompt_user
    answer = get_user_input
  end
  if answer == "s"
    current_card_total
  elsif answer == "h"
    current_card_total + deal_card
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_sum = initial_round
    until card_sum > 21 do 
      card_sum = hit?(card_sum)
      display_card_total(card_sum)
    end
  end_game(card_sum)
end
