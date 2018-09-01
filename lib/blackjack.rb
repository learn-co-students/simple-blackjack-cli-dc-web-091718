def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  puts "dealt: #{card}"
  return card
end

def display_card_total(sum)
  puts "Your cards add up to #{sum}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(sum)
  puts "Sorry, you hit #{sum}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  return sum
end

def hit?(sum)
  prompt_user
  resp = get_user_input
  total = sum
  if resp == 's'
    return sum
  elsif resp == 'h'
    card = deal_card

    total += card

    display_card_total(total)
  else
    invalid_command
  end
  return total
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
  sum = initial_round
  until sum > 21
    sum = hit?(sum)
  end
  end_game(sum)
end
    
