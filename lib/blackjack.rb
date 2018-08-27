cards = []

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(cardTotal)
  puts "Your cards add up to #{cardTotal}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(cardTotal)
  puts "Sorry, you hit #{cardTotal}. Thanks for playing!"
end

def initial_round #having issues with two methods
  cards = deal_card + deal_card
  display_card_total(cards)
  cards
end

def hit?(cardTotal)
  prompt_user
  answer = get_user_input
  until answer == "h" || answer == "s"
    invalid_command
      hit?(cardTotal)
  end
  if answer == "h"
    cardTotal += deal_card
  elsif answer == "s"
    cardTotal
  end
end

def invalid_command
  "Please enter a valid command"# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  cardTotal = initial_round
  until cardTotal > 21
    cardTotal = hit?(cardTotal)
    display_card_total(cardTotal)
  end
  end_game(cardTotal)
end
