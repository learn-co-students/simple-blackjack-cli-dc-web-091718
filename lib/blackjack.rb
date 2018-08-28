def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand 1..11
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
  first_card = deal_card
  second_card = deal_card
  initial_round_sum = first_card + second_card
  display_card_total(initial_round_sum)
  initial_round_sum
end

def hit?(current_card_total)
  prompt_user
  answer = get_user_input
  if answer == 's'
    current_card_total
  elsif answer == 'h'
    new_card = deal_card
    current_card_total = current_card_total + new_card
  else
    invalid_command
    prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  first_round = initial_round
  current_card_total = hit?(first_round)
  display_card_total(current_card_total)
  until current_card_total > 21
    hit?(current_card_total)
    display_card_total(current_card_total)
  end
  end_game(current_card_total)
end
    
