def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  (1..11).to_a.sample
end

def display_card_total(n)
  puts "Your cards add up to #{n}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input=gets.chomp
end

def end_game(n)
  puts "Sorry, you hit #{n}. Thanks for playing!"
end

def initial_round
  total=deal_card+deal_card
  display_card_total(total)
  total
end

def hit?(n)
  prompt_user
  input=get_user_input
  if input=="h"
    return n+deal_card
  end
  if input=="s"
    return n
  end
  invalid_command
  hit?(n)
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total=initial_round
  until total>21
    total=hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
