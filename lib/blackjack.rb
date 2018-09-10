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
  binding.pry
  prompt_user()
  userInput = get_user_input()
  if userInput == "h"
    if handTotal > 21
      end_game(handTotal)
    else
      prompt_user()
    end
  elsif userInput == "s"
    prompt_user()
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
  # code runner here

end
