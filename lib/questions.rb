def question_1
   banner_sorting_hat
   answer = prompt.select("What can you not wait to learn?",
   ["Flying on a Broomstick", "How to Unlock Doors", "Freeze Time", "Transfiguration", "Hexes"], symbols: {marker: '>'}, active_color: :cyan)
   question_2   
end

def question_2
   clear
   banner_sorting_hat
   answer = prompt.select("If you could be an animal, which would you be?", ["Lion", "Badger", "Snake", "Eagle"], symbols: {marker: '>'}, active_color: :cyan)
   if answer
      clear
      question_3
   end    
end

def question_3
   banner_sorting_hat
   answer = prompt.select("In a game of quidditch, what position would you play?", ["Keeper", "Bludger", "Chaser", "Seeker", "Chillin in the Crowd"], symbols: {marker: '>'}, active_color: :cyan)
   if answer
      clear
      question_4
   end    
end

def question_4
   banner_sorting_hat
   answer = prompt.select("Would you steal candy from a baby?", ["Yes", "No"], symbols: {marker: '>'}, active_color: :cyan)
   if answer == "Yes"
      clear
      question_5
   else
      clear
      question_6
   end
end

def question_5
   banner_sorting_hat
   answer = prompt.select("What is the closest material of the core of your wand?", ["Pheonix Feathers","Dragon's Blood"], symbols: {marker: '>'}, active_color: :cyan)
   if answer == "Dragon's Blood"
      clear
      slytherin_banner
      sleep(1)
      main_menu_slytherin
   else
      clear
      ravenclaw_banner
      sleep(1)
      main_menu_ravenclaw
   end
end

def question_6
   banner_sorting_hat
   answer = prompt.select("What would you do if you saw a 10' mountain troll?", ["Save Yourself", "Protect Others"], symbols: {marker: '>'}, active_color: :cyan)
   if answer == "Save Yourself"
      clear
      hufflepuff_banner
      sleep(1)
      main_menu_hufflepuff
   else
      clear
      gryffindor_banner
      sleep(1)
      main_menu_gryffindor
   end
end



# def question_1
   # banner_sorting_hat
   # answer = prompt.select("Which would be your favorite food?", ["Kale", "Pizza", "Ice Cream"], symbols: {marker: '>'}, active_color: :cyan)
   # if answer

#    end
# end
