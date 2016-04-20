def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  card = rand(1..11)
  # code #deal_card here
end

def display_card_total(num)
  puts "Your cards add up to #{num}" 
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  user_input = gets.chomp
  # code #get_user_input here
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  # code #initial_round here
  x=deal_card
  y=deal_card
  puts "Your cards add up to #{x + y}"
  return x+y
end

def hit?(num)
  prompt_user
  input = get_user_input
  input == "h" ? num + deal_card : num
end
  # code hit? here


def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  x = initial_round
  until x > 21 
    x = hit?(x)
    display_card_total(x)
  end
  end_game(x)
  # code runner here
end
    
