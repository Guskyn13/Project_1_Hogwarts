def question_1
   banner_sorting_hat
   answer = prompt.select("Would you steal candy from a baby?", ["Yes", "No"], symbols: {marker: '>'}, active_color: :cyan)
   if answer == "Yes"
      clear
      question_3
   else
      clear
      question_2
   end
end

def question_2
   banner_sorting_hat
   answer = prompt.select("What would you do if you saw a 10' mountain troll?", ["Save Yourself", "Protect Others"], symbols: {marker: '>'}, active_color: :cyan)
   if answer == "Save Yourself"

# This needs to be the loading sign and not clear

      clear

# loading_bar

      hufflepuff_banner
   else

# This needs to be the loading sign and not clear

      clear

# loading_bar

      gryfindor_banner
   end
end

def question_3
   banner_sorting_hat
   answer = prompt.select("What is the closest material of the core of your wand?", ["Dragon's Blood", "Pheonix Feathers"], symbols: {marker: '>'}, active_color: :cyan)
   if answer == "Dragon's Blood"

# This needs to be the loading sign and not clear

      clear

# loading_bar
      
      slytherin_banner
      sleep(1)
      main_menu_slytherin
   else

# This needs to be the loading sign and not clear

      clear

# loading_bar

      ravenclaw_banner
   end
end