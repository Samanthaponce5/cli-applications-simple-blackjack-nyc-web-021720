def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
  
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
 display_card_total(deal_card + deal_card)
deal_card + deal_card
end

#def hit?(current_total)           # why do I have to set                                           user_input = get_user_input                                     and not just write out                                       get_user_input in if statement
 # prompt_user
 #user_input = get_user_input
  
 #if user_input == 's'
 #  current_total
 #    elsif
   #    user_input == 'h'
#current_total += deal_card
#else
  
 # invalid_command
 # prompt_user
#end
#end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  while user_input != "h" && user_input != "s"
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  if user_input == "h"
    card_total += deal_card
  end
  return card_total
end

def invalid_command
  puts "Please enter a valid command"

end

#####################################################
# get every test to pass before coding runner below #
#####################################################


def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    