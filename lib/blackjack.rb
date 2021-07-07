require "pry"
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(11) + 1
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
  if input == "h"
    return "h"
  elsif input == "s"
    return "s"
  else
    return "exit"
  end
end

def end_game(n)
  # code #end_game here
  puts "Sorry, you hit #{n}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  handTotal = deal_card() + deal_card()
  display_card_total(handTotal)
  return handTotal
end

def hit?(handTotal)
  # code hit? here
  prompt_user()
  userInput = get_user_input()
  if userInput == "h"
    handTotal = handTotal + deal_card()
    return(handTotal)
  elsif userInput == "s"
    return(handTotal)
  else
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  handTotal = 0
  welcome()
  handTotal = initial_round()
  until handTotal > 21
  handTotal = hit?(handTotal)
  display_card_total(handTotal)
  end
  end_game(handTotal)
end
