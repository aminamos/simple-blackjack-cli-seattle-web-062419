def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  fd = deal_card
  sd = deal_card
  total = fd + sd
  display_card_total(total)
  total
end

def hit?(total)
  prompt_user
  response = get_user_input
  total2 = total
  
    if response == "h"
      total2 += deal_card
      total2
    elsif response == "s"
      total2
    else
      invalid_command
      prompt_user 
    end
  total2
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  total = display_card_total(initial_round)
  
  until total == 21
    hit?(total)
  end
end
    
